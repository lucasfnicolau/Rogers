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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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
