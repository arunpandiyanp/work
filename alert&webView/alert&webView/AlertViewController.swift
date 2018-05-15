//
//  AlertViewController.swift
//  alert&webView
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController
{
    
    @IBOutlet weak var textVie: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func myClick(_ sender: UIButton)
    {
        let alert = UIAlertController(title:nil, message: nil, preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "sheet1", style: .default)
        { (alertAction) in
            print("clicked on sheet 1")
            //you can add functions or codes here to execute when the action sheet is pressed
            self.setDisplay()
        }
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    func setDisplay(){
        textVie.text = "Button Clicked "
    
    }
    
}
