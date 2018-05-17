//
//  ViewController.swift
//  MachineTest
//
//  Created by Rk on 15/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var username:String!
    var passwrd:String!
    var gender:String!
    var dob:String!
    var email:String!
    var address:String!
    var phn:String!
    
    @IBOutlet weak var usrtxt: UITextField!
    @IBOutlet weak var pastxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(username)
        print(passwrd)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func forgotPassword(_ sender: Any) {
        let nextf = self.storyboard?.instantiateViewController(withIdentifier: "forgot") as! ForgotViewController
        nextf.username = username
        nextf.passwrd = passwrd
        nextf.gender = gender
        nextf.dob = dob
        nextf.email = email
        nextf.address = address
        nextf.phn = phn
        
        self.navigationController?.pushViewController(nextf, animated: true)
        
    }
    @IBAction func onSignin(_ sender: Any) {
        if usrtxt.text == username {
            
            if pastxt.text == passwrd{
                let next = storyboard?.instantiateViewController(withIdentifier: "logindetailsshow") as! FourthViewController
                next.adres = address
                next.eml = email
                next.dobOne = dob
                next.gender = gender
                next.passwrd = passwrd
                next.username = username
                next.phnn = phn
                
                self.navigationController?.pushViewController(next, animated: true)
                
            }
            else{
                let alert = UIAlertController(title: "Warning", message: "Password Incorrect", preferredStyle: .alert)
                let btn1 = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(btn1)
                present(alert, animated: true, completion: nil)
            
            }
        }
        else{
            
        }
    }
    
}

