//
//  ViewController.swift
//  activity-indicator
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indic: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        indic.startAnimating()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

