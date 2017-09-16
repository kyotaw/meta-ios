//
//  SensorFactory.swift
//  Murmur-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation


class SensorFactory {
    
    static func create(sensorType: SensorType) -> Sensor? {
        switch sensorType {
        case .accelerometer:
            return CMAccelerometer(status: SensorStatus(), transferredData: 1818172720.011111111)
        default:
            return nil
        }
    }
}
