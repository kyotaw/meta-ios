//
//  SensorListView.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/13.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import Foundation
import UIKit


class SensorListView : NSObject, UITableViewDelegate, UITableViewDataSource {
    
    init(view: UITableView, sensors: [Sensor]) {
        self.view = view
        self.sensors = sensors
        self.view.tableFooterView = UIView()
        
        super.init()
        self.view.delegate = self
        self.view.dataSource = self
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sensors.count
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sensorListViewCell", for: indexPath) as! SensorListViewCell
        let row = indexPath.row
        let sensor = self.sensors[row]
        cell.setSensor(sensor: sensor)
        
        return cell
    }
    
    internal func reloadData() {
        self.view.reloadData()
    }
    
    fileprivate let sensors: [Sensor]
    fileprivate let view: UITableView
    
}
