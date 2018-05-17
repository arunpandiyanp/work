//
//  ViewController.swift
//  skyFloating
//
//  Created by Rk on 12/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField


class ViewController: UIViewController {

    @IBOutlet weak var textFld: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = SkyFloatingLabelTextField(frame:CGRect(x: 30, y: 40, width: view.frame.width, height: 45))
        
        self.view.addSubview(text)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

