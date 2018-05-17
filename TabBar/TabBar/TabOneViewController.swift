//
//  TabOneViewController.swift
//  TabBar
//
//  Created by Rk on 27/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class TabOneViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var table: UITableView!
    let images = [UIImage(named:"1.jpg"),UIImage(named:"2.jpg"),UIImage(named:"3.jpg"),UIImage(named:"4.jpg"),UIImage(named:"5.jpg"),UIImage(named:"6.jpg"),UIImage(named:"7.jpg"),UIImage(named:"8.jpg")]
    let imageNames = ["imageOne","imageTwo","imageThree","imageFour","imageFive","imageSix","imageSeven","imageEight"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.table.rowHeight = 200
        
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TabOneTableViewCell
        cell.immage?.image = images[indexPath.row]
//      cell.immage.sizeToFit()
        
        cell.label.text = imageNames[indexPath.row]
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
