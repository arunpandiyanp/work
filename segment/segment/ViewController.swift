//
//  ViewController.swift
//  segment
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var threeView: UIView!
    @IBOutlet weak var twoView: UIView!
    @IBOutlet weak var oneView: UIView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mySegment: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "in first segment"
        
        
    }
    @IBAction func onSegmentSelect(_ sender: UISegmentedControl) {
        switch mySegment.selectedSegmentIndex {
        case 0:
            myLabel.text = "in first segment"
            oneView.isHidden = false
            twoView.isHidden = true
            threeView.isHidden = true
        case 1:
            myLabel.text = "in second segment"
            oneView.isHidden = true
            twoView.isHidden = false
            threeView.isHidden = true
        case 2:
            myLabel.text = "in third segment"
            oneView.isHidden = true
            twoView.isHidden = true
            threeView.isHidden = false
            
        default:
            myLabel.text = "in first segment"
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

