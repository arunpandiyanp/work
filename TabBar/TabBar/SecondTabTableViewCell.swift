//
//  SecondTabTableViewCell.swift
//  TabBar
//
//  Created by Rk on 28/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class SecondTabTableViewCell: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate {
    
    let images = [UIImage(named:"1.jpg"),UIImage(named:"2.jpg"),UIImage(named:"3.jpg"),UIImage(named:"4.jpg"),UIImage(named:"5.jpg"),UIImage(named:"6.jpg"),UIImage(named:"7.jpg"),UIImage(named:"8.jpg")]
    

    @IBOutlet weak var coLL: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        coLL.delegate = self
        coLL.dataSource = self
        // Initialization code
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellcoll = coLL.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cellcoll.image.image = images[indexPath.row]
        return cellcoll
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
