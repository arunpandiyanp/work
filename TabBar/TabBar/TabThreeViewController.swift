//
//  TabThreeViewController.swift
//  TabBar
//
//  Created by Rk on 27/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class TabThreeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tab: UITableView!
    let imageNames = ["imageOne","imageTwo","imageThree","imageFour","imageFive","imageSix","imageSeven","imageEight"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        tab.delegate = self
        tab.dataSource = self
        tab.rowHeight = 200
        

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tab.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SecondTabTableViewCell
//        print("enteredone")

        return cell
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
