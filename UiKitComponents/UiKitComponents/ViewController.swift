//
//  ViewController.swift
//  UiKitComponents
//
//  Created by Rk on 08/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField_three: UITextField!
    @IBOutlet weak var slider_one: UISlider!
    @IBOutlet weak var textField_two: UITextField!
    @IBOutlet weak var stepper_one: UIStepper!
    @IBOutlet weak var textField_one: UITextField!
    @IBOutlet weak var switch_one: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        textField_three.text = String(Int(slider_one.value))
        textField_two.text = String(stepper_one.value)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onSwitchClick(_ sender: UISwitch) {
        if(switch_one.isOn){
            switch_one.isOn = false
            textField_one.text = "switch is in off state"
        }
        else{
            switch_one.isOn = true
            textField_one.text = "switch is in on state"
        }
    }
    @IBAction func onStepperClick(_ sender: UIStepper) {
        textField_two.text = String(stepper_one.value)
    }
    
    @IBAction func onSliderSelect(_ sender: UISlider) {
        textField_three.text = String(Int(slider_one.value))
    }
    
    @IBAction func onNextButtonClick(_ sender: UIButton) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        self.navigationController?.pushViewController(next, animated: true)
        
    }
}

