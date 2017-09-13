//
//  SensorType.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation


enum SensorType : String {
    case fingerprintSensor = "FingerprintSensor"
    case proximitySensor = "ProximitySensor"
    case gps = "GPS"
    case accelerometer = "Accelerometer"
    case gyroscope = "Gyroscope"
    case magneticSensor = "MagneticSensor"
    case led = "LED"
    case brightnessSensor = "BrightnessSensor"
    case vibrator = "Vibrator"
    case microphone = "Microphone"
    case speaker = "Speaker"
    case outCamera = "OutCamera"
    case inCamera = "InCamera"
    case beacon = "Beacon"
    case nfc = "NFC"
    case barometer = "Barometer"
}
