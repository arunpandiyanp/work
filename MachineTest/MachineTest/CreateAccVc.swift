//
//  CreateAccVc.swift
//  MachineTest
//
//  Created by Rk on 15/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class CreateAccVc: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    @IBOutlet weak var address: UITextView!
    var gn = ["Male","female"]
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var picker: UIPickerView!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var dob: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var usrname: UITextField!
    var datef = DateFormatter()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usrname.placeholder = "Username"
        usrname.textAlignment = .center
        
        phone.keyboardType = .numberPad
        phone.placeholder = "contact number"
        
        picker.delegate = self
        
        gender.placeholder = "gender"
        dob.placeholder = "date of birth"
        
        password.placeholder = "password"
        gender.inputView = picker
        dob.inputView = datePicker
        datef.dateFormat = "MM/DD/YY"
        dob.text = String(describing: datePicker.date)
        email.keyboardType = .default
        password.keyboardType = .default
        address.keyboardType = .default
        

        // Do any additional setup after loading the view.
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gn.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gn[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (picker.selectedRow(inComponent: 0))==0 {
            gender.text = gn[0]
        }
        else{
            gender.text = gn[1]
        }
    }
    @IBAction func ondatepickerSelect(_ sender: Any) {
        dob.text = String(describing: datePicker.date)

    }
    
    @IBAction func onCreate(_ sender: Any) {
        let next = storyboard?.instantiateViewController(withIdentifier: "login") as! ViewController
        next.username = usrname.text!
        next.passwrd = password.text!
        next.gender = gender.text
        next.dob = dob.text
        next.email = email.text
        next.address = address.text
        next.phn = phone.text
        
        self.navigationController?.pushViewController(next, animated: true)
    }
    
}
