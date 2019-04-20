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
            topView.backgroundColor = #colorLiteral(red: 1, green: 0.003921568627, blue: 0.137254902, alpha: 1)
            bottonView.backgroundColor = #colorLiteral(red: 0, green: 0.03529411765, blue: 0.7019607843, alpha: 1)
        default:
            topView.backgroundColor = #colorLiteral(red: 1, green: 0.003921568627, blue: 0.137254902, alpha: 1)
            bottonView.backgroundColor = #colorLiteral(red: 0, green: 0.03529411765, blue: 0.7019607843, alpha: 1)
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
