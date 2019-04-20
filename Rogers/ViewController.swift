//
//  ViewController.swift
//  Rogers
//
//  Created by Nicolau on 17/04/19.
//  Copyright © 2019 LAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var iconImageViews: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for icon in iconImageViews {
            icon.image = icon.image?.withRenderingMode(.alwaysTemplate)
            icon.tintColor = #colorLiteral(red: 1, green: 0.08235294118, blue: 0.3137254902, alpha: 1)
        }
    }
}

