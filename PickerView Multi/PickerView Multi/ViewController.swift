//
//  ViewController.swift
//  PickerView Multi
//
//  Created by Rk on 13/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
 
    
   

    
    @IBOutlet weak var text: UITextField!
    @IBOutlet var picker: UIPickerView!
    var states=["Kerala","Tamil Nadu","Karnataka","Andra Pradesh"]
    let dker=["Dis Ker 1","Dis Ker 2","Dis Ker 3","Dis Ker 4","Dis Ker 5","Dis Ker 6","Dis Ker 7","Dis Ker 8","Dis Ker 9"]
    let dtamil = ["Dis TN 1","Dis TN 2","Dis TN 3","Dis TN 4","Dis TN 5","Dis TN 6","Dis TN 7"]
    let dkar=["Dis KA 1","Dis KA 2","Dis KA 3","Dis KA 4","Dis KA 5"]
    let dap=["Dis AP 1","Dis AP 2","Dis AP 3","Dis AP 4","Dis AP 5"]
    var rslt = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
       picker.delegate = self
        text.inputView = picker
//        state.inputView = picker
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return states.count
        }
        else{
            if states[pickerView.selectedRow(inComponent: 0)] == "Kerala"{
                rslt = dker
                return rslt.count
            }
            else if states[pickerView.selectedRow(inComponent: 0)] == "Tamil Nadu"{
                rslt = dtamil
                return rslt.count
            }
            else if states[pickerView.selectedRow(inComponent: 0)] == "Karnataka"{
                rslt = dkar
                return rslt.count
            }
            else if states[pickerView.selectedRow(inComponent: 0)] == "Andra Pradesh"{
                rslt = dap
                return rslt.count
            }
            else{
                return 0
            }
            
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return states[row]
        }
        else{
            return rslt[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            pickerView.reloadAllComponents()
            picker.selectRow(0, inComponent: 1, animated: true)
        }
       var selectedState = states[pickerView.selectedRow(inComponent: 0)]
       var selectedDist = rslt[pickerView.selectedRow(inComponent: 1)]
        
        text.text = "\(selectedState)---\(selectedDist)"
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

