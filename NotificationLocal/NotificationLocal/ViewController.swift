//
//  ViewController.swift
//  NotificationLocal
//
//  Created by Rk on 18/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController,UNUserNotificationCenterDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (didAuthorised, error) in
//            let alert = UIAlertController(title: "Error", message: "restricted", preferredStyle: .alert)
//            let btn1 = UIAlertAction(title: "Done", style: .default, handler: nil)
//            alert.addAction(btn1)
//            self.present(alert, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func ShowClicked(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "qwertyui"
        content.subtitle = "asdfghjkl"
        content.body = "qazxswedcvftgb"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        let rqst = UNNotificationRequest(identifier: "NotificationOne", content: content, trigger: trigger)
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().add(rqst, withCompletionHandler: nil)
        
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert,.badge,.sound])
    }


}

