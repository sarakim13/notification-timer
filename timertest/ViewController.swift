
//
//  ViewController.swift
//  timertest
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    @IBAction func action(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "this expired"
        content.subtitle = "time is up"
        content.body = "really expired"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger( timeInterval: 60.0, repeats: true )
        let request = UNNotificationRequest( identifier: "timerDoner", content: content, trigger: trigger)
       UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert ,.sound,.badge ], completionHandler: {didAllow, error in})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


