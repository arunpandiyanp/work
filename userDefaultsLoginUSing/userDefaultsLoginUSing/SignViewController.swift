//
//  SignViewController.swift
//  userDefaultsLoginUSing
//
//  Created by Rk on 29/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SignViewController: UIViewController {

    @IBOutlet weak var passwordcnfrm: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    let UserDflt = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onCreateAccount(_ sender: Any) {
        let next = storyboard?.instantiateViewController(withIdentifier: "login") as! ViewController
        if(password.text == passwordcnfrm.text){
            UserDflt.set(username.text, forKey: "username")
            UserDflt.set(passwordcnfrm.text, forKey: "password")
            self.navigationController?.pushViewController(next, animated: true)
            
        }
        else{
            let alrt = UIAlertController(title: "Password Error", message: "recheck your password", preferredStyle: .alert)
            let btnOne = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alrt.addAction(btnOne)
            self.present(alrt, animated: true, completion: nil)
        }
    
        
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
