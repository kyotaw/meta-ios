//
//  MetaResource.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation


internal class MetaResource : Resource {
    
    static func login(ownerId: String, password: String, callback: @escaping MetaCallback) {
        let endPoint = [Resource.url, "owners", "login"].joined(separator: "/")
        let params = [
            "ownerId": ownerId,
            "password": password
        ]
        self.post(url: endPoint, params: params, callback: callback)
    }
    
    static func getMono(model: String, modelId: String, vendor: String, callback: @escaping MetaCallback) {
        let endPoint = [Resource.url, "monos"].joined(separator: "/")
        let params = [
            "model": model,
            "modelId": modelId,
            "vendor": vendor
        ]
        self.get(endPoint, params: params, callback: callback)
    }
    
    static func registerMono(model: String, modelId: String, vendor: String, name: String, callback: @escaping MetaCallback) {
        let endPoint = [Resource.url, "monos"].joined(separator: "/")
        let params = [
            "model": model,
            "modelId": modelId,
            "vendor": vendor,
            "name": name
        ]
        self.post(url: endPoint, params: params, callback: callback)
    }
}
