//
//  SensorListViewCell.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/13.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation
import UIKit


class SensorListViewCell : UITableViewCell {
    
    public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = UITableViewCellSelectionStyle.none
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.selectionStyle = UITableViewCellSelectionStyle.none
    }
    
    internal func setSensor(sensor: Sensor) {
        self.sensor = sensor
        self.sensorNameLabel.text = sensor.name
        self.dataAmountLabel.text = sensor.transferredData.description
        self.dataUnitLabel.text = "MB"
        self.sensorStatus.text = sensor.status.currentState
    }
    
    @IBOutlet weak var sensorNameLabel: UILabel!
    @IBOutlet weak var dataAmountLabel: UILabel!
    @IBOutlet weak var dataUnitLabel: UILabel!
    @IBOutlet weak var sensorStatus: UILabel!
    
    
    var sensor: Sensor!
}
