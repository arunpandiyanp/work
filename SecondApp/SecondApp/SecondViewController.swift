//
//  SecondViewController.swift
//  SecondApp
//
//  Created by Rk on 05/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //variable used to pass data
    
    var name:String!
    @IBOutlet weak var NamePassed: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NamePassed.text = name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnclickBack(_ sender: Any) {
        _ = self.storyboard?.instantiateViewController(withIdentifier: "first") as! ViewController
        self.navigationController?.popViewController(animated: true)
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
