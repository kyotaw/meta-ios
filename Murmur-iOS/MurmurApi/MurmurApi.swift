//
//  MurmurApi.swift
//  Murmur-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation

import SwiftyJSON


public typealias MurmurCallback = ((_ err: MurmurApiError?, _ res: JSON?) -> Void)


public class MurmurApi {
    
    static func login(ownerId: String, password: String, callback: @escaping MurmurCallback) {
        MurmurResource.login(ownerId: ownerId, password: password, callback: callback)
    }
    
    static func getMono(platformId: PlatformId, callback: @escaping MurmurCallback) {
        MurmurResource.getMono(model: platformId.modelId, modelId: platformId.terminalId, vendor: platformId.vendor, callback: callback)
    }
    
    static func registerMono(platformId: PlatformId, name: String, callback: @escaping MurmurCallback) {
        MurmurResource.registerMono(model: platformId.modelId, modelId: platformId.terminalId, vendor: platformId.vendor, name: name, callback: callback)
    }
    
}
