//
//  SecondViewController.swift
//  segment
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var smSlider: UISlider!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        stepper.value = 0
        
        smSlider.value = Float(stepper.value)
        
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onClick(_ sender: UIStepper) {
        textLabel.text = String(stepper.value)
        smSlider.value = Float(stepper.value)
    }
    
    @IBAction func sliderSelect(_ sender: UISlider) {
        
    }
    
    @IBAction func onButtonSelect(_ sender: UIButton) {
        print("button clicked")
        let next = self.storyboard?.instantiateViewController(withIdentifier: "third") as! ThirdViewController
        self.navigationController?.pushViewController(next, animated: true)
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
