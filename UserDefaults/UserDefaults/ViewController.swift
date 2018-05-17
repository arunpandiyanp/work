//
//  ViewController.swift
//  UserDefaults
//
//  Created by Rk on 29/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    let ud = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        self.username.placeholder = "username"
        self.password.placeholder = "Password"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onButtonClick(_ sender: Any) {
        ud.set(username.text, forKey: "username")
        ud.set(password.text, forKey: "password")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

