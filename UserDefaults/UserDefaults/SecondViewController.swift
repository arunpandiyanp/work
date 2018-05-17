//
//  SecondViewController.swift
//  UserDefaults
//
//  Created by Rk on 29/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let userd = UserDefaults.standard
        labelOne.text = userd.value(forKey: "username") as! String
        labelTwo.text = userd.value(forKey: "password") as! String

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
