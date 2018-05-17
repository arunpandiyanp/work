//
//  TableViewController.swift
//  searchViewSecond
//
//  Created by Rk on 19/01/1940 Saka.
//  Copyright © 1940 Rk. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController,UISearchResultsUpdating {
    
    let searchController = UISearchController(searchResultsController: nil)
    var unfilteredNames = ["qwer","wsx","xfcgh","dxfcg","awesdx","xgfch","rad","wars","esthg","set","sdxf","efww","efw","weg","wgwg","fhknv","kjvbjk","kwkj"].sorted()
    var filterdNames:[String]? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        filterdNames = unfilteredNames
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = false
        tableView.tableHeaderView = searchController.searchBar
        
        

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
        guard let names = filterdNames else {
            return 0
        }
        return names.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let CellNames = filterdNames![indexPath.row]
        cell.textLabel?.text  = CellNames
        
        // Configure the cell...
        
        return cell
    }

    
    
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text, !searchText.isEmpty{
            filterdNames = unfilteredNames.filter({ (nameEntered) -> Bool in
                return nameEntered.lowercased().contains(searchText.lowercased())
            })
        }
        else{
            filterdNames = unfilteredNames
        }
        tableView.reloadData()
    }
    
    

   
}
