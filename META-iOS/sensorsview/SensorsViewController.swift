//
//  FirstViewController.swift
//  META-iOS
//
//  Created by 渡部郷太 on 2017/09/12.
//  Copyright © 2017 watanabe kyota. All rights reserved.
//

import UIKit


class SensorsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlatformService.getPlatrom() { (err, platform) in
            if let e = err {
                let errorView = createErrorModal(title: e.errorType.rawValue, message: e.message) {_ in }
                self.present(errorView, animated: false, completion: nil)
            } else {
                self.platform = platform
                self.sensorListView = SensorListView(view: self.sensorTableView, sensors: platform!.availableSensors)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var platform: Platform!
    var sensorListView: SensorListView!
    
    @IBOutlet weak var sensorTableView: UITableView!
    
}

