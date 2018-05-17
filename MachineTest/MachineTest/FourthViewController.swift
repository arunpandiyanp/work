//
//  FourthViewController.swift
//  MachineTest
//
//  Created by Rk on 15/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    var username:String!
    var passwrd:String!
    var gender:String!
    var dobOne:String!
    var eml:String!
    var adres:String!
    var phnn:String!

    @IBOutlet weak var address: UITextView!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var dob: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var gend: UILabel!
    @IBOutlet weak var usr: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        address.text = adres
        email.text = eml
        dob.text = dobOne
        gend.text = gender
        phone.text = phnn
        usr.text = username

        // Do any additional setup after loading the view.
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
