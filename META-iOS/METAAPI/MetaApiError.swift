//
//  Error.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation


public enum MetaApiErrorType : Int {
    case connectionError = 10
    case invalidAuthInfo = 100
    case monoNotFound = 200
    case unknownError = 999
}

public struct MetaApiError {
    public init(errorType: MetaApiErrorType, message: String="") {
        self.errorType = errorType
        self.message = message
    }
    
    public let errorType: MetaApiErrorType
    public let message: String
}
