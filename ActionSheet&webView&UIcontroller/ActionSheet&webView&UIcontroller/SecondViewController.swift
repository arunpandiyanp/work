//
//  SecondViewController.swift
//  ActionSheet&webView&UIcontroller
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func socialNetworkFunction(_ sender: Any) {
       let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        //creating actions and adding web view in it
        let fb = UIAlertAction(title: "Facebook", style: .default) { (alertAction) in
            let urL = URL(string: "https://www.facebook.com/")
            let myrqst = URLRequest(url: urL!)
            self.webView.loadRequest(myrqst)
        }
        let ggl = UIAlertAction(title: "Google Plus", style: .default) { (alertAction) in
            let urL2 = URL(string: "https://plus.google.com/")
            let myrqst2 = URLRequest(url: urL2!)
            self.webView.loadRequest(myrqst2)
        }
        
        let mail = UIAlertAction(title:"Gmail", style: .default) { (alertAction) in
            let urL3 = URL(string: "https://mail.google.com")
            let myrqst3 = URLRequest(url: urL3!)
            self.webView.loadRequest(myrqst3)
        }
        
        alert.addAction(fb)
        alert.addAction(ggl)
        alert.addAction(mail)
        
        self.present(alert, animated: true, completion: nil)
    }
    

}
