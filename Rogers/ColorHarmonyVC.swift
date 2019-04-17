//
//  ColorHarmonyVC.swift
//  Rogers
//
//  Created by Aluno Mack on 17/04/19.
//  Copyright © 2019 LAP. All rights reserved.
//

import UIKit

class ColorHarmonyVC: UIViewController {

    
    
    @IBOutlet weak var topView: UIView!
    
    
    
    
    @IBOutlet weak var bottonView: UIView!
    
    
    
    @IBOutlet weak var harmonySelector: UISegmentedControl!
    
    
    @IBAction func harmonySelected(_ sender: UISegmentedControl) {
        
        switch harmonySelector.selectedSegmentIndex {
        case 0:
            topView.backgroundColor = UIColor.red
            bottonView.backgroundColor = UIColor.blue
        default:
            topView.backgroundColor = UIColor.blue
            bottonView.backgroundColor = UIColor.red
        }
        
        
    }
    
    
    
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

}
