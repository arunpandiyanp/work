//
//  ViewController.swift
//  sliderView
//
//  Created by Rk on 13/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.contentSize = image.bounds.size
//        scroll.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(UInt8(UIViewAutoresizing.flexibleWidth.rawValue)|UInt8(UIViewAutoresizing.flexibleHeight.rawValue)))
        scroll.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.flexibleWidth.rawValue|UIViewAutoresizing.flexibleHeight.rawValue)
        //enabling zooming using UIscrollViewDelegate
        
        //create a delegate object to access elements of that protocol
        scroll.delegate = self
        
        scroll.maximumZoomScale = 3
        scroll.minimumZoomScale = 1
        scroll.zoomScale = 1
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return image
    }


}

