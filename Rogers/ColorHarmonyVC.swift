//
//  ColorHarmonyVC.swift
//  Rogers
//
//  Created by Aluno Mack on 17/04/19.
//  Copyright © 2019 LAP. All rights reserved.
//

import UIKit

class ColorHarmonyVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var images: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [#imageLiteral(resourceName: "Complementary"), #imageLiteral(resourceName: "Analogous"), #imageLiteral(resourceName: "Triade")]
    }
    
    @IBAction func harmonyChanged(_ sender: UISegmentedControl) {
        imageView.image = images[sender.selectedSegmentIndex]
    }
}

