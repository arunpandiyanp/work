//
//  TableViewCellTabSecond.swift
//  machineTest@
//
//  Created by Rk on 10/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class TableViewCellTabSecond: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var coll: UICollectionView!
    let ImagG = [UIImage(named:"1.jpg"),UIImage(named:"2.jpg"),UIImage(named:"3.jpg"),UIImage(named:"4.jpg"),UIImage(named:"5.jpg"),UIImage(named:"6.jpg"),UIImage(named:"7.jpg"),UIImage(named:"8.jpg"),UIImage(named:"9.jpg")]
    
    let imageNames = ["image 1","image 2","image 3 ","image 4","image 5","image 6","image 7","image 8","image 9",]

    override func awakeFromNib() {
        super.awakeFromNib()
        coll.delegate = self
        coll.dataSource = self
        // Initialization code
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImagG.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coll.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCellTabSecond
        
        cell.img.image = ImagG[indexPath.row]
        cell.label.text = imageNames[indexPath.row]
        
        
        return cell
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
