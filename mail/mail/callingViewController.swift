//
//  callingViewController.swift
//  mail
//
//  Created by Rk on 17/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import CallKit

class callingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(fileURLWithPath: "tel://7034084766")
        

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
