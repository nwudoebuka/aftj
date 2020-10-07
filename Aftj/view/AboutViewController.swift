//
//  AboutViewController.swift
//  Aftj
//
//  Created by Chukwuebuka Nwudo on 07/10/2020.
//  Copyright © 2020 Chukwuebuka Nwudo. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var drawerBtnOutlt: UIButton!
    @IBAction func drawerBtnAction(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.traitCollection.userInterfaceStyle == .dark {
                 // User Interface is Dark
            drawerBtnOutlt.setImage(UIImage(named: "ic_drawer_white"), for: .normal)
             }
    }
   

}
