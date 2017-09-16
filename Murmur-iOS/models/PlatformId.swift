//
//  PlatformId.swift
//  Murmur-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation


class PlatformId {
    
    init(modelId: String, terminalId: String, vendor: String, hash: String="") {
        self.modelId = modelId
        self.terminalId = terminalId
        self.vendor = vendor
        self.hash = hash
    }
    
    let modelId: String
    let terminalId: String
    let vendor: String
    let hash: String
}
