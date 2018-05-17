//
//  ViewController.swift
//  segment!
//
//  Created by Rk on 08/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelone: UILabel!
    @IBOutlet weak var segmentOne: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSegmentclick(_ sender: UISegmentedControl) {
        switch segmentOne.selectedSegmentIndex {
        case 0:
            labelone.text = "selected first"
        case 1:
            labelone.text = "two"
            
        default:
            print("any")
        }
        
    }
    
}

