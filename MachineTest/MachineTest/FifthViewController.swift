//
//  FifthViewController.swift
//  MachineTest
//
//  Created by Rk on 15/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    var clk = 0
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var labelTimer: UILabel!
    let timr = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func run(){
        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    @IBAction func onStart(_ sender: Any) {
        let myURl = URL(string: "https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=VA2qWqrgE4SvX8zJk5AM")
        let myReq = URLRequest(url: myURl!)
        webView.loadRequest(myReq)
        run()
        
        
    
    }
    @objc func update(){
     clk += 1
        labelTimer.text = "\(clk)"
        
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
