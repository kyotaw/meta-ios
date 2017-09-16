//
//  File.swift
//  Murmur-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation


protocol Sensor {
    var isAvailable: Bool { get }
    var type: SensorType { get }
    var name: String { get }
    var transferredData: Double { get set }
    var status: SensorStatus { get }
}
