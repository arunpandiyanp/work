//
//  ViewController.swift
//  PageViewController First
//
//  Created by Rk on 23/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageIndex:Int = 0
    var pageName:String = " "
    var imagge:String = " "

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image  = UIImage(named:imagge)
        labelOne.text = pageName
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

