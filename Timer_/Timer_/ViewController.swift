//
//  ViewController.swift
//  Timer_
//
//  Created by Rk on 12/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityOutlet: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        activityOutlet.isHidden = true
        activityOutlet.sizeToFit()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onStartClick(_ sender: Any) {
        activityOutlet.isHidden = false
        activityOutlet.startAnimating()
        
        
    }
    @IBAction func onStopCLick(_ sender: Any) {
        activityOutlet.stopAnimating()
        activityOutlet.hidesWhenStopped = true
    }
    
}

