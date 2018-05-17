//
//  SecondViewController.swift
//  projSeagSliderProgressView
//
//  Created by Rk on 13/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var sliderSelected: UISlider!
    @IBOutlet weak var labelOne: UILabel!
    var timer = Timer()
    var limit:Int = 0
    var count:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func run(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    @IBOutlet weak var progr: UIProgressView!
    @IBAction func onStartClicked(_ sender: Any) {
      run()
    }
    @IBAction func onSliderSelect(_ sender: Any) {
        limit = Int(sliderSelected.value)
        self.progr.progress = Float(Double(limit) * 0.016666)
    }
    @IBAction func onStop(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @objc func timerUpdate(){
        print("start")
        limit += 1
        
        if limit<60{
            labelOne.text = String(limit)
            sliderSelected.value = Float(Int(limit))
            self.progr.progress += 0.0166666
        }
        else{
            print("error")
        }
    
    }
    
}
