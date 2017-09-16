//
//  Accelerometer.swift
//  ThingsClient
//
//  Created by 渡部郷太 on 11/29/15.
//  Copyright © 2015 watanabe kyota. All rights reserved.
//

import Foundation
import CoreMotion

import SocketIO


class CMAccelerometer : CMSensor {
    
    override init(status: SensorStatus, transferredData: Double) {
        super.init(status: status, transferredData: transferredData)
    }
    
    override var isAvailable: Bool {
        return self.motionManager.isAccelerometerAvailable
    }
    
    override var name: String {
        return self.type.rawValue
    }
    
    override var type: SensorType {
        return .accelerometer
    }
}
