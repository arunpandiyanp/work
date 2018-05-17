//
//  CallViewController.swift
//  mail
//
//  Created by Rk on 17/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import CallKit

class CallViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    @IBAction func onCliCkCall(_ sender: Any) {
         let alert = UIAlertController(title: "Calling", message: "........", preferredStyle:.alert)
        let btn1 = UIAlertAction(title: "Okay", style: .default) { (alertAction) in
            let url:NSURL = URL(string: "tel://(+917034084766)") as! NSURL
            if #available(iOS 10, *){
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            }
            else{
                UIApplication.shared.openURL(url as URL)
            }
        }
        alert.addAction(btn1)
        self.present(alert, animated: true, completion: nil
        )
        
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
