//
//  PlatformFactory.swift
//  Murmur-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation
import UIKit

import SwiftyJSON


class PlatformFactory {
    
    static let vendor = "Apple Inc."
    
    static func create() -> Platform? {
        guard let id = PlatformFactory.createPlatformId() else {
            return nil
        }
        guard let modelName = PlatformList[id.modelId] else {
            return nil
        }
        
        return Platform(id: id, name: modelName)
    }
    
    static func create(data: JSON) -> Platform? {
        guard let mono = data["mono"].dictionary else {
            return nil
        }
        guard let model = mono["model"]?.string else {
            return nil
        }
        guard let modelId = mono["modelId"]?.string else {
            return nil
        }
        guard let vendor = mono["vendor"]?.string else {
            return nil
        }
        guard let hash = mono["hash"]?.string else {
            return nil
        }
        guard let name = mono["name"]?.string else {
            return nil
        }
        let platformId = PlatformId(modelId: model, terminalId: modelId, vendor: vendor, hash: hash)
        return Platform(id: platformId, name: name)
    }
    
    static func createPlatformId() -> PlatformId? {
        guard let model = PlatformFactory.model else {
            return nil
        }
        guard let modelId = PlatformFactory.modelId else {
            return nil
        }

        return PlatformId(modelId: model, terminalId: modelId, vendor: PlatformFactory.vendor)
    }
    
    static var model: String? {
        var size: Int = 0
        if sysctlbyname("hw.machine", nil, &size, nil, 0) != 0 {
            return nil
        }
        
        var value = [CChar](repeating: 0, count: size / MemoryLayout<CChar>.size)
        sysctlbyname("hw.machine", &value, &size, nil, 0)
        
        return String(cString: value)
    }
    
    static var modelId: String? {
        return UIDevice.current.identifierForVendor?.uuidString
    }
    
}
