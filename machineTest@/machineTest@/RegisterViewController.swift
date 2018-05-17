//
//  RegisterViewController.swift
//  machineTest@
//
//  Created by Rk on 10/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    let udefReg = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onRegister(_ sender: UIButton) {
        udefReg.set(email.text, forKey: "email")
        udefReg.set(password.text, forKey: "pass")
        udefReg.set(name.text, forKey: "name")
        udefReg.set(phoneNumber.text, forKey: "number")
        
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let next = segue.destination as! ViewController
//    
//    }
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
