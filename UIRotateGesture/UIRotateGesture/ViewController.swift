//
//  ViewController.swift
//  UIRotateGesture
//
//  Created by Rk on 13/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var image: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        image.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        let rotate = UIRotationGestureRecognizer(target: self, action: #selector(rotateView(sender:)))
        image.addGestureRecognizer(rotate)
        image.isUserInteractionEnabled = true
        image.isMultipleTouchEnabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func rotateView(sender:UIRotationGestureRecognizer){
        var lastrotate = CGFloat()
        self.view.bringSubview(toFront: image)
        if(sender.state == UIGestureRecognizerState.ended){
            lastrotate = 0.0
        }
        let rotation = 0.0 - (lastrotate-sender.rotation)
        let currentTrans = sender.view?.transform
        let newTrans = currentTrans?.rotated(by: rotation)
        sender.view?.transform = newTrans!
        print("rotating")
        lastrotate = sender.rotation
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

