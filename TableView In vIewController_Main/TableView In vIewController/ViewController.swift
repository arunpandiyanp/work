//
//  ViewController.swift
//  TableView In vIewController
//
//  Created by Rk on 21/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tablle: UITableView!
    var imageNames = ["image 1","image 2","image 3","image 4","image 5","image 6"]
    var imagess = [UIImage(named: "1.jpg"),UIImage(named: "2.jpg"),UIImage(named: "3.jpg"),UIImage(named: "4.jpg"),UIImage(named: "5.jpg"),UIImage(named: "6.jpg")]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 200
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celll = tablle.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        celll.imaggge.image = imagess[indexPath.row]
        celll.lbl.text = imageNames[indexPath.row]
        return celll
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

