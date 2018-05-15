//
//  ViewController.swift
//  datePicker_test
//
//  Created by Rk on 12/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    @IBOutlet weak var dateView: UILabel!
    var dformat = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dateView.text = String(describing: datePickerOutlet.date)
        dateView.text = String(describing: datePickerOutlet.date)
        dformat.dateFormat = "MM/dd/YYYY"

//        self.datePickerOutlet.date = NSDate.init(timeIntervalSinceNow: 0) as Date
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func datePickerSelected(_ sender: Any)
    {
        dateView.text = String(describing: datePickerOutlet.date)
//        dateView.text = String(describing: dformat.date(from: String(describing: datePickerOutlet.date)))
        
    }
    

}

