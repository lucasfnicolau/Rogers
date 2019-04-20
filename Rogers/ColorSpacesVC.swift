//
//  ColorSpacesVC.swift
//  Rogers
//
//  Created by Aluno Mack on 17/04/19.
//  Copyright © 2019 LAP. All rights reserved.
//

import UIKit

class ColorSpacesVC: UIViewController {

    @IBOutlet weak var adobeRGB: UIImageView!
    @IBOutlet weak var dpiP3: UIImageView!
    @IBOutlet weak var sRGB: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adobeRGB.image = adobeRGB.image?.withRenderingMode(.alwaysTemplate)
        adobeRGB.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        dpiP3.image = dpiP3.image?.withRenderingMode(.alwaysTemplate)
        dpiP3.tintColor = #colorLiteral(red: 1, green: 0.07843137255, blue: 0.3098039216, alpha: 1)
        
        sRGB.image = sRGB.image?.withRenderingMode(.alwaysTemplate)
        sRGB.tintColor = #colorLiteral(red: 0.9529411765, green: 0.6862745098, blue: 0.1333333333, alpha: 1)
    }
    
    @IBAction func toggleDCI(_ sender: UISwitch) {
        switch (sender.isOn) {
        case true:
            dpiP3.isHidden = false
        default:
            dpiP3.isHidden = true
        }
    }
    
    @IBAction func toggleSRGB(_ sender: UISwitch) {
        switch (sender.isOn) {
        case true:
            sRGB.isHidden = false
        default:
            sRGB.isHidden = true
        }
    }
    
    @IBAction func toggleAdobeRGB(_ sender: UISwitch) {
        switch (sender.isOn) {
        case true:
            adobeRGB.isHidden = false
        default:
            adobeRGB.isHidden = true
        }
    }
}
