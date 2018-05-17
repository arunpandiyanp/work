//
//  ViewController.swift
//  VideoPlayer
//
//  Created by Rk on 03/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onPlay(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "jp", withExtension: "mp4"){
            let video = AVPlayer(url: url)
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
            
        }
    }
}

