//
//  HomeSlideViewController.swift
//  Aftj
//
//  Created by Chukwuebuka Nwudo on 07/10/2020.
//  Copyright © 2020 Chukwuebuka Nwudo. All rights reserved.
//

import UIKit

class HomeSlideViewController: UIViewController {
    @IBOutlet weak var clickHerBtnOutlt:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI(){
        clickHerBtnOutlt.layer.borderWidth = 1
        clickHerBtnOutlt.layer.borderColor = UIColor.white.cgColor
    }

}
