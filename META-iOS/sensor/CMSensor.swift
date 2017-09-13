//
//  CMSensor.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation
import CoreMotion


class CMSensor : Sensor {
    
    init(status: SensorStatus, transferredData: Double) {
        self._status = status
        self._transferredData = transferredData
        self.motionManager = CMMotionManager()
    }
    
    var name: String {
        return "CMSensor"
    }
    
    var type: SensorType {
        return .accelerometer
    }
    
    var transferredData: Double {
        get {
            return self._transferredData
        }
        set {
            self._transferredData = newValue
        }
    }
    
    var status: SensorStatus {
        return self._status
    }
    
    var isAvailable: Bool {
        return false
    }
    
    var _status: SensorStatus
    var _transferredData: Double
    
    let motionManager: CMMotionManager
}
