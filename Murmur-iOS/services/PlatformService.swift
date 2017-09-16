//
//  PlatformService.swift
//  Murmur-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation


class PlatformService {
    
    static func getPlatrom(callback: @escaping (MetaError?, Platform?) -> Void) {
        guard let platform = PlatformFactory.create() else {
            callback(MetaError(errorType: .deviceUnavailable), nil)
            return
        }
        MurmurApi.getMono(platformId: platform.platformId) { (err, data) in
            if err == nil {
                guard let platform = PlatformFactory.create(data: data!) else {
                    callback(MetaError(errorType: .deviceUnavailable, message: err!.message), nil)
                    return
                }
                callback(nil, platform)
                return
            }
            if err!.errorType == .monoNotFound {
                MurmurApi.registerMono(platformId: platform.platformId, name: platform.name) { (err, data) in
                    if let e = err {
                        callback(MetaError(errorType: .deviceUnavailable, message: e.message), nil)
                    } else {
                        guard let platform = PlatformFactory.create(data: data!) else {
                            callback(MetaError(errorType: .deviceUnavailable), nil)
                            return
                        }
                        callback(nil, platform)
                    }
                }
            }
        }
    }
}
