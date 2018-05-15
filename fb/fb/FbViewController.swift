//
//  FbViewController.swift
//  fb
//
//  Created by Rk on 14/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class FbViewController: UIViewController {

    @IBOutlet weak var webVies: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLogin()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func displayLogin(){
        let myUrl = URL(string: "https://www.facebook.com")
        let myReq = URLRequest(url: myUrl!)
        webVies.loadRequest(myReq)
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
