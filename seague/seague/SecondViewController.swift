//
//  SecondViewController.swift
//  seague
//
//  Created by Rk on 13/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var limit:Int = 0
    var timer = Timer()

    @IBOutlet weak var sliderOne: UISlider!
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func run(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }

    @IBAction func onStrtClk(_ sender: Any) {
        run()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func timerUpdate(){
        limit += 1
        label1.text = String(limit)
        if limit<60{
            
         print("er")
        }
        else{
            print("any")
        }
        
    }
    

    
}
