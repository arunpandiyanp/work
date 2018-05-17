//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Rk on 29/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    @IBOutlet weak var stop: UIButton!
    @IBOutlet weak var pause: UIButton!
    @IBOutlet weak var start: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = Bundle.main.url(forResource: "Champion", withExtension: "mp3")
        do{
           player = try AVAudioPlayer(contentsOf: url!)
           player.prepareToPlay()
            player.currentTime = 0
        }catch let error as NSError{
            print(error)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onStop(_ sender: Any) {
        player.stop()
        player.currentTime = 0
        start.titleLabel?.text = "  Start  "
    }
    
    @IBAction func onStart(_ sender: Any) {
        player.play()
    }
    @IBAction func onPause(_ sender: Any) {
        player.pause()
        start.titleLabel?.text = "resume"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

