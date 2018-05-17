//
//  ViewController.swift
//  pickerviewAsssgnmnt
//
//  Created by Monisha C on 30/12/17.
//  Copyright © 2017 Monisha C. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource{
    @IBOutlet var pf: UITextField!
    @IBOutlet var picker: UIPickerView!
    var state=["Kerala","Tamil Nadu","Karnataka","Andra Pradesh"]
    
    let dker=["Dis Ker 1","Dis Ker 2","Dis Ker 3","Dis Ker 4","Dis Ker 5","Dis Ker 6","Dis Ker 7","Dis Ker 8","Dis Ker 9"]
    let dtamil = ["Dis TN 1","Dis TN 2","Dis TN 3","Dis TN 4","Dis TN 5","Dis TN 6","Dis TN 7"]
    let dkar=["Dis KA 1","Dis KA 2","Dis KA 3","Dis KA 4","Dis KA 5"]
    let dap=["Dis AP 1","Dis AP 2","Dis AP 3","Dis AP 4","Dis AP 5"]
    var select=0
    //declaring an empty array
    var darray=[String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pf.inputView=picker
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //returns number of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component==0{
            return state.count
        }
        else{
        
                if state[pickerView.selectedRow(inComponent: 0)]=="Kerala"{
                    darray=dker
                                   }
            else if state[pickerView.selectedRow(inComponent: 0)]=="Tamil Nadu"{
                    darray=dtamil
            }
            else if state[pickerView.selectedRow(inComponent: 0)]=="Karnataka"{
                    darray=dkar
                return dkar.count
            }else if state[pickerView.selectedRow(inComponent: 0)]=="Andra Pradesh"{
                    darray=dap
            }
            return darray.count
            
        

        }
}
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==0 {
            return state[row]
        }
        else { return  darray[row]}

       }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            //when selected the first component the second component is reloaded
            pickerView.reloadComponent(1)
            
            
            //row 0 in component
            picker.selectRow(0, inComponent: 1, animated: true)
        }
            let stateSelected=state[pickerView.selectedRow(inComponent: 0)]
            let districtSelected=darray[pickerView.selectedRow(inComponent: 1)]
        
            pf.text="\(stateSelected) : \(districtSelected)"
        
    }
}
