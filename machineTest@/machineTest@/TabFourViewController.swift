//
//  TabFourViewController.swift
//  machineTest@
//
//  Created by Rk on 10/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class TabFourViewController: UIViewController,UISearchResultsUpdating,UITableViewDataSource,UITableViewDelegate {
   
    let search = UISearchController(searchResultsController: nil)
    let names = ["q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"]
    

    var arr:String?
    var filterdNames:[String]?
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterdNames = names
        search.searchResultsUpdater = self
        search.hidesNavigationBarDuringPresentation = false
        search.dimsBackgroundDuringPresentation = false
        table.tableHeaderView = search.searchBar
        table.delegate = self
        table.dataSource = self
        

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let nm = filterdNames else {
            return 0
            
        }
        return nm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCellTabFour
         arr = names[indexPath.row]
        cell.labelTabFr.text = arr
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = search.searchBar.text, !searchText.isEmpty {
            filterdNames = names.filter{ cell in
                return cell.lowercased().contains(searchText.lowercased())
            }
            
        } else {
            filterdNames = names
            
        }
        table.reloadData()
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

   

}
