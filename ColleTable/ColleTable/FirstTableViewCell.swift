//
//  FirstTableViewCell.swift
//  ColleTable
//
//  Created by Rk on 22/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var coll: UICollectionView!
    let images = [UIImage(named:"1.jpg"),UIImage(named:"2.jpg"),UIImage(named:"3.jpg"),UIImage(named:"4.jpg"),UIImage(named:"5.jpg"),UIImage(named:"6.jpg"),UIImage(named:"7.jpg"),UIImage(named:"8.jpg"),UIImage(named:"9.jpg")]

    override func awakeFromNib() {
        super.awakeFromNib()
        coll.delegate = self
        coll.dataSource = self
        // Initialization code
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coll.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.image.image = images[indexPath.row]
        
        return cell
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
