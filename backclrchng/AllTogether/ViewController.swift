//
//  ViewController.swift
//  AllTogether
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count:Int = 0
    @IBOutlet weak var buttonOneVc: UIButton!
    @IBOutlet weak var textOne_vc: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonClicked(_ sender: UIButton) {
        count += 1
        if count == 1{
            self.view.backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            self.buttonOneVc.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        }
        else if(count == 2){
             self.view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
            self.buttonOneVc.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        }
        else if(count == 3){
             self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            self.buttonOneVc.backgroundColor = #colorLiteral(red: 0.4417911768, green: 0.1099210009, blue: 0.1934475303, alpha: 1)
        }
        else if(count == 4){
             self.view.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
            self.buttonOneVc.backgroundColor = #colorLiteral(red: 0.1023413464, green: 0.2792772949, blue: 0.4014722109, alpha: 1)
        }
       
        else{
            count = 0
            self.view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            self.buttonOneVc.backgroundColor = #colorLiteral(red: 0.8391418457, green: 0.8392630219, blue: 0.8391152024, alpha: 1)
            
        }
        
    }
    
}

