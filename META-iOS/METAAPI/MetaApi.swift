//
//  MetaApi.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation

import SwiftyJSON


public typealias MetaCallback = ((_ err: MetaApiError?, _ res: JSON?) -> Void)


public class MetaApi {
    
    static func login(ownerId: String, password: String, callback: @escaping MetaCallback) {
        MetaResource.login(ownerId: ownerId, password: password, callback: callback)
    }
    
    static func getMono(platformId: PlatformId, callback: @escaping MetaCallback) {
        MetaResource.getMono(model: platformId.modelId, modelId: platformId.terminalId, vendor: platformId.vendor, callback: callback)
    }
    
    static func registerMono(platformId: PlatformId, name: String, callback: @escaping MetaCallback) {
        MetaResource.registerMono(model: platformId.modelId, modelId: platformId.terminalId, vendor: platformId.vendor, name: name, callback: callback)
    }
    
}
