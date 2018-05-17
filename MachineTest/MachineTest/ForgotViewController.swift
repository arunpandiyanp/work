//
//  ForgotViewController.swift
//  MachineTest
//
//  Created by Rk on 15/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ForgotViewController: UIViewController {
    
    var username:String!
    var passwrd:String!
    var gender:String!
    var dob:String!
    var email:String!
    var address:String!
    var phn:String!

    @IBOutlet weak var resetPasswordTwo: UITextField!
    @IBOutlet weak var resetPasswordOne: UITextField!
    @IBOutlet weak var usernameThirdVc: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onReset(_ sender: Any) {
        if usernameThirdVc.text == username{
            if resetPasswordOne == resetPasswordTwo{
             passwrd = resetPasswordTwo.text
                
                let first = self.storyboard?.instantiateViewController(withIdentifier: "login") as! ViewController
                first.username = username
                first.passwrd = passwrd
                first.gender = gender
                first.dob = dob
                first.email = email
                first.address = address
                first.phn = phn
                self.navigationController?.pushViewController(first, animated: true)
            }
        }
        
    }
    
    
}
