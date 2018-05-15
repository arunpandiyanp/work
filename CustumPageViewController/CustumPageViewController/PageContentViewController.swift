//
//  PageContentViewController.swift
//  CustumPageViewController
//
//  Created by Srishti Innovative on 19/01/18.
//  Copyright © 2018 sics. All rights reserved.
//

import UIKit

class PageContentViewController: UIViewController {
    @IBOutlet var bgImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!

    
    var getImage:String?
    var getTitle:String?
    var getPageIndex:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // bgImageView.image = UIImage(named: getImage)
       // titleLabel.text = getTitle
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
