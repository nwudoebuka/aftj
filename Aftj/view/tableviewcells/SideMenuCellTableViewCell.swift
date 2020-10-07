//
//  SideMenuCellTableViewCell.swift
//  Aftj
//
//  Created by Chukwuebuka Nwudo on 07/10/2020.
//  Copyright © 2020 Chukwuebuka Nwudo. All rights reserved.
//

import UIKit

class SideMenuCellTableViewCell: UITableViewCell {

    @IBOutlet weak var icImg:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        if self.traitCollection.userInterfaceStyle == .dark {
                       // User Interface is Dark
            icImg.image = UIImage(named: "home_white")
               
                   }
    }

  

}
