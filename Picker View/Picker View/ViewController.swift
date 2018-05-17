//
//  ViewController.swift
//  Picker View
//
//  Created by Rk on 12/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    @IBOutlet weak var textfieldForPick: UITextField!
    @IBOutlet var pickerViewFirst: UIPickerView!
    var names = ["abc","def","ghi","jkl"]
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate object creation
        pickerViewFirst.delegate = self

        textfieldForPick.inputView = pickerViewFirst
        // Do any additional setup after loading the view, typically from a nib.
    }
    //returns number of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    //returns number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return names.count
    }
    //returns names for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return names[row]
    }
    //assigns names for textfield from the array provided
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfieldForPick.text = names[row]
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

