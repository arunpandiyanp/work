//
//  ViewController.swift
//  machineTest@
//
//  Created by Rk on 10/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    let udef = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        username.text = udef.value(forKey: "email") as? String
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onLoginClick(_ sender: UIButton) {
        let userOne = username.text
        let passOne = password.text
        if userOne == udef.value(forKey: "email") as? String {
            if passOne == udef.value(forKey: "pass") as? String {
                let alert = UIAlertController(title: "Success", message: "Login successful", preferredStyle: .alert)
                let btn = UIAlertAction(title: "Okay", style: .default, handler: { (alertAction) in
                    let next = self.storyboard?.instantiateViewController(withIdentifier: "tabBeg") as! TabViewController
                    self.navigationController?.pushViewController(next, animated: true)
                    
                    
                })
                alert.addAction(btn)
                self.present(alert, animated: true, completion: nil)
            }
            else{
                let alert = UIAlertController(title: "Password error", message: "Login Failed", preferredStyle: .alert)
                let btn = UIAlertAction(title: "Okay", style: .default, handler: { (alertAction) in
                    
                })
                alert.addAction(btn)
                self.present(alert, animated: true, completion: nil)
                
            }
            
        }
        
        
    
    }
    @IBAction func onRegisterClick(_ sender: Any) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

