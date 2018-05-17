//
//  SecondViewController.swift
//  UiKitComponents
//
//  Created by Rk on 08/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var lableone: UILabel!
    @IBOutlet weak var segmentOne: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lableone.text = "bh"
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSegmentClick(_ sender: UISegmentedControl) {
        switch segmentOne.selectedSegmentIndex {
        case 0:
            self.lableone.text = "segment one"
        case 1:
            self.lableone.text = "segment two"
        default:
            self.lableone.text = "one"
        }
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
