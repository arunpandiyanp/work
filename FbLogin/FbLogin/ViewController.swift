//
//  ViewController.swift
//  FbLogin
//
//  Created by Rk on 12/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FacebookLogin
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        loginButton.frame = CGRect(x: 16, y: 50, width: view.frame.width-32, height: 50)
        view.addSubview(loginButton)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

