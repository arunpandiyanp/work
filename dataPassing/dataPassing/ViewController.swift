//
//  ViewController.swift
//  dataPassing
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onclicked(_ sender: Any) {
        let next = self.storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        next.stringPassed = text.text
        self.navigationController?.pushViewController(next, animated: true)
        
    }
}

