//
//  ViewController.swift
//  Buttons
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myValue:Int!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //mySwitch.isOn = true
         myValue = Int(slider.value)
        label2.text = String(myValue)
    }

    @IBAction func onSwitchClick(_ sender: UISwitch)
    {
        if(mySwitch.isOn){
            firstLabel.text = "switch is on"
        }
        else{
            firstLabel.text = "switch is of"
        }
    }
    
    @IBAction func sliderMoving(_ sender: UISlider)
    {
        self.myValue = Int(slider.value)
            label2.text = String(self.myValue)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

