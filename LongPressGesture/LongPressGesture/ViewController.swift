//
//  ViewController.swift
//  LongPressGesture
//
//  Created by Rk on 17/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let long = UILongPressGestureRecognizer(target: self, action: #selector(onLongPress))
        backView.addGestureRecognizer(long)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func onLongPress(){
        let alert = UIAlertController(title: "LOng Press Gesture", message: "it worked", preferredStyle: .alert)
        let btn1 = UIAlertAction(title: "OKay", style: .default, handler: nil)
        alert.addAction(btn1)
        present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

