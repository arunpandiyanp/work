//
//  ViewController.swift
//  Allert
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func googleView(_ sender: UIButton)
    {
        let myURL = URL(string: "http://www.google.com")
        //let myRequest = URLRequest(url: myURL!)
        let myRequest = URLRequest(url: myURL!)
        webView.loadRequest(myRequest)
    }
    @IBAction func onClickAllert(_ sender: Any)
    {
        
        let alert = UIAlertController(title: "warning", message: "invalid name", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Done", style: .cancel, handler: nil)
        let cancel = UIAlertAction(title: "cancel", style: .default, handler: nil)
        alert.addAction(cancel)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
}

