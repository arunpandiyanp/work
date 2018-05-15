//
//  SecondViewController.swift
//  dataPassing
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var stringPassed:String!

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelOntwo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = stringPassed

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
