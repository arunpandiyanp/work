//
//  TabOneTableViewCell.swift
//  TabBar
//
//  Created by Rk on 27/03/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit

class TabOneTableViewCell: UITableViewCell {

    @IBOutlet weak var immage: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
        //self.immage.layer.cornerRadius = 20
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
