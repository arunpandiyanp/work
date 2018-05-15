//
//  ViewController.swift
//  alert&webView
//
//  Created by Rk on 07/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var browseWindow: UIWebView!
    @IBOutlet weak var browseButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickEvent(_ sender: Any) {
        let alert = UIAlertController(title: "Warning", message: "are you sure !!!", preferredStyle: .alert)
        let Btn1 = UIAlertAction(title: "Yes", style: .default, handler: nil)
        let btn2 = UIAlertAction(title: "No", style: .cancel, handler: nil)
        
        alert.addAction(Btn1)
        alert.addAction(btn2)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func functionBrowse(_ sender: Any) {
        //create a url
        let urL = URL(string: "https:www.google.com")
        //create a request to handle the url
        let urlReq = URLRequest(url: urL!)
        //load that request
        browseWindow.loadRequest(urlReq)
        
        
    }
    func buttonHandlerForNO(alert:UIAlertAction){
        let urL = URL(string: "https:www.google.com")
        //create a request to handle the url
        let urlReq = URLRequest(url: urL!)
        //load that request
        browseWindow.loadRequest(urlReq)
        
    }
}

