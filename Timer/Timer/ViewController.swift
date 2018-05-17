//
//  ViewController.swift
//  Timer
//
//  Created by Rk on 12/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var limit:Int = 0
    var mntlmt:Int = 0
    var hrlmt:Int = 0
    var timerOne = Timer()
    @IBOutlet weak var hr: UILabel!
    @IBOutlet weak var mnt: UILabel!
    @IBOutlet weak var sec: UILabel!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var stop: UIButton!
    @IBOutlet weak var reset: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func run(){
        //it schedules a custom function for each time interval -->Timer.scheduledTimer()
         timerOne = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)

    }

    @IBAction func onStartt(_ sender: Any) {
        self.start.backgroundColor = #colorLiteral(red: 1, green: 0.3094263673, blue: 0.4742257595, alpha: 1)
        self.stop.backgroundColor = #colorLiteral(red: 0.4744660258, green: 0.4745377898, blue: 0.4744502902, alpha: 1)
        self.reset.backgroundColor = #colorLiteral(red: 0.4744660258, green: 0.4745377898, blue: 0.4744502902, alpha: 1)
        run()
    }
    @IBAction func onStopp(_ sender: UIButton) {
        self.start.backgroundColor = #colorLiteral(red: 0.4744660258, green: 0.4745377898, blue: 0.4744502902, alpha: 1)
        self.stop.backgroundColor = #colorLiteral(red: 0.9136545062, green: 0.2867402434, blue: 0.4663881063, alpha: 1)
        self.reset.backgroundColor = #colorLiteral(red: 0.4744660258, green: 0.4745377898, blue: 0.4744502902, alpha: 1)
        timerOne.invalidate()
        
        
        //        let timerOne = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: false)

    }
    @IBAction func onResett(_ sender: Any) {
        self.start.backgroundColor = #colorLiteral(red: 0.4744660258, green: 0.4745377898, blue: 0.4744502902, alpha: 1)
        self.stop.backgroundColor = #colorLiteral(red: 0.4744660258, green: 0.4745377898, blue: 0.4744502902, alpha: 1)
        self.reset.backgroundColor = #colorLiteral(red: 0.9136545062, green: 0.2867402434, blue: 0.4663881063, alpha: 1)
        timerOne.invalidate()
        limit = 0
        mntlmt = 0
        hrlmt = 0
        hr.text = "0"
        mnt.text = "0"
        sec.text = "0"
        
        
        
    }
    @objc func timerUpdate(){
        print("jkj")
        
        limit += 1
        sec.text = String(limit)
        mnt.text = String(mntlmt)
        hr.text = String(hrlmt)
        if(limit==60){
            limit = 00
            mntlmt += 01
            if(mntlmt == 60){
                mntlmt = 00
                hrlmt += 1
            }
            else{
                print("crashed")
            }
        }
        else{
            print("crashed")
        }
        
    }
}

