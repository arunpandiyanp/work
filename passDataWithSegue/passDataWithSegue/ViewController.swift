//
//  ViewController.swift
//  passDataWithSegue
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldOne: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVcObj = segue.destination as! secondViewController
        secondVcObj.passed = textFieldOne.text!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onclicked(_ sender: UIButton) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let btn1 = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(btn1)
        let btn2 = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        alert.addAction(btn2)
        self.present(alert, animated: true, completion: nil)
    }
    
}

