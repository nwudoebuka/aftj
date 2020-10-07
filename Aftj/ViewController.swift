//
//  ViewController.swift
//  Aftj
//
//  Created by Chukwuebuka Nwudo on 07/10/2020.
//  Copyright © 2020 Chukwuebuka Nwudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,Islide {
 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func slidedTo(index: Int) {
         print("slided to index \(index)")
     }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
          if let segDestination = segue.destination as? HomePageViewController{
                    print("is segue")
                    segDestination.slidedelegate = self
                }
    }

}

