//
//  TableViewController.swift
//  TableViewControllerStatic_Main
//
//  Created by Rk on 27/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var imgFour: UIImageView!
    @IBOutlet weak var imgThree: UIImageView!
    @IBOutlet weak var imgTwo: UIImageView!
    @IBOutlet weak var imgONe: UIImageView!
    @IBOutlet weak var lblone: UILabel!
    @IBOutlet weak var lbltw: UILabel!
    @IBOutlet weak var lblthre: UILabel!
    @IBOutlet weak var lblfr: UILabel!
    var images = [UIImage(named:"1.jpg"),UIImage(named:"2.jpg"),UIImage(named:"3.jpg"),UIImage(named:"4.jpg"),UIImage(named:"5.jpg"),UIImage(named:"6.jpg"),UIImage(named:"7.jpg"),UIImage(named:"8.jpg"),]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 200
        imgFour.image = images[0]
        imgThree.image = images[1]
        imgTwo.image = images[2]
        imgONe.image = images[3]
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }

    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        switch indexPath.row{
//        case 0 :
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellOne", for: indexPath)
//            
//            return cell
//        default:
//            <#code#>
//        }
//    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
