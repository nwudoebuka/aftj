//
//  ShadowButton.swift
//  Aftj
//
//  Created by Chukwuebuka Nwudo on 07/10/2020.
//  Copyright © 2020 Chukwuebuka Nwudo. All rights reserved.
//

import UIKit

class ShadowButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpUI()
    }
    func setUpUI(){
       
        self.backgroundColor = UIColor(red: 171/255, green: 178/255, blue: 186/255, alpha: 1.0)
        // Shadow Color and Radius
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
       self.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
       self.layer.shadowOpacity = 1.0
       self.layer.shadowRadius = 0.0
      self.layer.masksToBounds = false
      self.layer.cornerRadius = 4.0
    }

}
