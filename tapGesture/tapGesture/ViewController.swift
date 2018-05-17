//
//  ViewController.swift
//  tapGesture
//
//  Created by Rk on 13/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(onTapListenerFunc))
        tap.numberOfTouchesRequired = 1
        
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func onTapListenerFunc(){
     textField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

