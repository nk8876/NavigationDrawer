//
//  TableCell.swift
//  NavigationDrawer
//
//  Created by Dheeraj Arora on 25/09/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var menuName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
