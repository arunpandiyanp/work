//
//  MessageViewController.swift
//  mail
//
//  Created by Rk on 17/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import MessageUI

class MessageViewController: UIViewController,MFMessageComposeViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
   
    @IBAction func onSendMessage(_ sender: Any) {
        let alert = UIAlertController(title: "ready to send", message: "going to send", preferredStyle: .alert)
        let btn1 = UIAlertAction(title: "OKay", style: .default) { (alertaction) in
            if MFMessageComposeViewController.canSendText(){
                let mesg = MFMessageComposeViewController()
                mesg.recipients = ["+917034084766"]
                mesg.body = "HEy there"
                mesg.messageComposeDelegate = self
                self.present(mesg, animated: true, completion: nil)
            }
        }
        alert.addAction(btn1)
        self.present(alert, animated: true, completion: nil)
    }
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
