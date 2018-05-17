//
//  ViewController.swift
//  userDefaultsLoginUSing
//
//  Created by Rk on 29/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var uname: UITextField!
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
      
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onClickButton(_ sender: Any) {
        let Unm = ud.value(forKey: "username") as! String
        let pwd = ud.value(forKey: "password") as! String
          let next = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        if (Unm == uname.text && pwd == password.text) {
            let alert = UIAlertController(title: "Successful", message: "Account found", preferredStyle: .alert)
//            let btnOne = UIAlertAction(title: "Okay", style: .default, handler: nil)
            let btnOne = UIAlertAction(title: "Okay", style: .default, handler: { (alertaction) in
                print("djjdvbdvbjdvj")
                self.navigationController?.pushViewController(next, animated: true)
            })
            alert.addAction(btnOne)
            self.present(alert, animated: true, completion: nil)
            
            
            
        }
        else{
            let alert = UIAlertController(title: "Failed", message: "Account not found", preferredStyle: .alert)
            let btnOne = UIAlertAction(title: "Okay", style: .destructive, handler: nil)
            alert.addAction(btnOne)
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    @IBAction func onSignUp(_ sender: Any) {
        let sign = storyboard?.instantiateViewController(withIdentifier: "sign") as! SignViewController
        self.navigationController?.pushViewController(sign, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

