//
//  ViewController.swift
//  Myapp
//
//  Created by Rk on 05/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textOutlet2: UITextField!
    
    @IBOutlet weak var textOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonAction(_ sender: Any) {
        textOutlet2.text = textOutlet.text
        let second = self.storyboard?.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        self.navigationController?.pushViewController(second, animated: true)
    }
}

