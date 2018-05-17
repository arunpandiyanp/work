//
//  CollectionViewController.swift
//  machineTest@
//
//  Created by Rk on 10/04/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    

    @IBOutlet weak var coll: UICollectionView!
    let ImagG = [UIImage(named:"1.jpg"),UIImage(named:"2.jpg"),UIImage(named:"3.jpg"),UIImage(named:"4.jpg"),UIImage(named:"5.jpg"),UIImage(named:"6.jpg"),UIImage(named:"7.jpg"),UIImage(named:"8.jpg"),UIImage(named:"9.jpg")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ImagG.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coll.dequeueReusableCell(withReuseIdentifier: "reuse", for: indexPath) as! CollectionViewCellimageOnly
        cell.imageOnly.image = ImagG[indexPath.row]
        return cell
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
