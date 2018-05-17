//
//  ViewController.swift
//  SamplePageViewController
//
//  Created by Srishti Innovative on 19/01/18.
//  Copyright © 2018 sics. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imgView: UIImageView!

    var pageIndex: Int = 0
    var strTitle: String!
    var strPhotoName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imgView.image = UIImage(named: strPhotoName)
        titleLabel.text = strTitle
    }
    @IBAction func SegControl(_ sender: Any) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

