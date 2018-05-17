//
//  ViewController.swift
//  SecondApp
//
//  Created by Rk on 05/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var NameToPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //this code is used to set the background color through code5
        //view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Onclick(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondOne") as! SecondViewController
        //variable named name is declared in the second view controller
        //and we use this instance of view controller named next to pass
        //data between them
        next.name = NameToPass.text
    self.navigationController?.pushViewController(next, animated: true)
        
    }
    
}

