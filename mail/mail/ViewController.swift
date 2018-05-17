//
//  ViewController.swift
//  mail
//
//  Created by Rk on 17/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController,MFMailComposeViewControllerDelegate {
    let mail = MFMailComposeViewController()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onSendClick(_ sender: Any) {
        let alert = UIAlertController(title: "jscbj", message: "kjscbj", preferredStyle: .alert)
        let btn1 = UIAlertAction(title: "okat", style: .default) { (alertaction) in
            if MFMailComposeViewController.canSendMail(){
                self.mail.mailComposeDelegate = self
                self.mail.setToRecipients(["rakeshrameshch@gmail.com"])
                self.mail.setMessageBody("hey there", isHTML: false)
                self.present(self.mail, animated: true, completion: nil)
                
            }
        }
        alert.addAction(btn1)
        self.present(alert, animated: true, completion: nil)
        
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

