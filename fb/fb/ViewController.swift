//
//  ViewController.swift
//  fb
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        username.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        password.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        username.placeholder = "Username"
        password.placeholder = "password"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSignIn(_ sender: Any) {
        if username.text == "rkch37401"{
            if password.text == "qwerty" {
               let alert = UIAlertController(title: "Success", message: "login Successfull go get a life", preferredStyle: .alert)
                let btn1 = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alert.addAction(btn1)
                self.present(alert, animated: true, completion: nil)
               
            }
            else{
                let alert2 = UIAlertController(title: nil, message: "password error", preferredStyle: .alert)
                let btn2 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                alert2.addAction(btn2)
                self.present(alert2, animated: true, completion: nil)
            }
        }
        else{
            let alert3 = UIAlertController(title: "Warning", message: "create a new account", preferredStyle: .alert)
            let btn3 = UIAlertAction(title: "Sign-Up", style: .default, handler: { (alertAction) in
                //create a new storyboard to hold our storyboard
                let story:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let next = story.instantiateViewController(withIdentifier: "login") as! FbViewController
                self.navigationController?.pushViewController(next, animated: true)

            })
            alert3.addAction(btn3)
            self.present(alert3, animated: true, completion: nil)

        }
    }
    
}

