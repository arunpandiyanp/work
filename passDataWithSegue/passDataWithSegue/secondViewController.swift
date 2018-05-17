//
//  secondViewController.swift
//  passDataWithSegue
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    var passed:String!
    
    
    
    
    
    @IBOutlet weak var labelTwo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = passed
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
