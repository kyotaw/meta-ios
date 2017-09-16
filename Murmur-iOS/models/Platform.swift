//
//  iPhone.swift
//  Murmur-iOS
//
//  Created by 渡部郷太 on 11/28/15.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation
import UIKit


class Platform {
    
    init(id: PlatformId, name: String) {
        self.platformId = id
        self._name = name
    }
    
    var name: String {
        get {
            return self._name
        }
        set {
            return self._name = newValue
        }
    }
    
    lazy var availableSensors: [Sensor] = { () -> [Sensor] in
        var sensors = [Sensor]()
        for sensorType in self.supportedSensors {
            guard let sensor = SensorFactory.create(sensorType: sensorType) else {
                continue
            }
            sensors.append(sensor)
        }
        return sensors
    }()
    
    var supportedSensors: [SensorType] {
        return [
            .fingerprintSensor,
            .barometer,
            .nfc,
            .proximitySensor,
            .gps,
            .accelerometer,
            .gyroscope,
            .magneticSensor,
            .led,
            .brightnessSensor,
            .vibrator,
            .microphone,
            .speaker,
            .outCamera,
            .inCamera,
            .beacon,
        ]
    }
    
    let platformId: PlatformId
    var _name: String

}
