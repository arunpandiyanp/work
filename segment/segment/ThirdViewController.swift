//
//  ThirdViewController.swift
//  segment
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var sWitch: UISwitch!
    @IBOutlet weak var segmentMain: UISegmentedControl!
    @IBOutlet weak var thirdContainer: UIView!
    @IBOutlet weak var secondContainer: UIView!
    @IBOutlet weak var firstContainer: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentOnClick(_ sender: Any) {
        switch segmentMain.selectedSegmentIndex {
        case 0:
            firstContainer.isHidden = false
            secondContainer.isHidden = true
            thirdContainer.isHidden = true
        case 1:
            secondContainer.isHidden = false
            firstContainer.isHidden = true
            thirdContainer.isHidden = true
        case 2:
            firstContainer.isHidden = true
            secondContainer.isHidden = true
            thirdContainer.isHidden = false
        default:
            firstContainer.isHidden = false
            secondContainer.isHidden = true
            thirdContainer.isHidden = true
            
        }
        
    }
    @IBAction func onSwitch(_ sender: UISwitch) {
        if(sWitch.isOn){
            sWitch.isOn = false
        }
        else{
            sWitch.isOn = true
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
