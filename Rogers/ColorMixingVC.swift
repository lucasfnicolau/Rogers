//
//  ColorMixingVC.swift
//  Rogers
//
//  Created by Nicolau on 17/04/19.
//  Copyright © 2019 LAP. All rights reserved.
//

import UIKit

extension UIColor {
    func components() -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return (r, g, b, a)
    }
}

class ColorMixingVC: UIViewController {
    @IBOutlet var colorViews: [CircleView]!
    @IBOutlet weak var resultColorView: CircleView!
    @IBOutlet var bgView: UIView!
    
    var red: CGFloat = 1
    var green: CGFloat = 1
    var blue: CGFloat = 1
    var lastView = UIView()
    var viewsSelected: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        lastView.backgroundColor = UIColor.clear
        
        for colorCircle in colorViews {
            let tap = UITapGestureRecognizer(target: self, action: #selector(colorTapped))
            colorCircle.addGestureRecognizer(tap)
            colorCircle.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        bgView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(colorTapped)))
    }
 
    @objc func colorTapped(_ gesture: UITapGestureRecognizer) {
        
        if let view = gesture.view {
            
            if let viewColor = view.backgroundColor, let lastColor = resultColorView.backgroundColor {
                
                let newRed = viewColor.components().red + lastColor.components().red
                let r = newRed <= 1 ? newRed : 1
                
                let newGreen = viewColor.components().green + lastColor.components().green
                let g = newGreen <= 1 ? newGreen : 1
                
                let newBlue = viewColor.components().blue + lastColor.components().blue
                let b = newBlue <= 1 ? newBlue : 1
                
                if view == bgView {
                    resultColorView.backgroundColor = UIColor.clear
                } else if newRed == 1 && newGreen == 1 && newBlue == 1 {
                    resultColorView.backgroundColor = view.backgroundColor
                } else {
                    resultColorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 0.8)
                }
                
                if view == bgView {
                    removeBorders(from: viewsSelected)
                    viewsSelected = []
                } else {
                    if !viewsSelected.contains(view) {
                        if viewsSelected.count < 2 {
                            viewsSelected.append(view)
                            view.layer.borderWidth = 5
                        } else {
                            removeBorders(from: viewsSelected)
                            viewsSelected = []
                            viewsSelected.append(view)
                        }
                    }
                }
                
                for color in colorViews {
                    if viewsSelected.contains(color) {
                        color.layer.borderWidth = 5
                        
                    } else {
                        color.layer.borderWidth = 0
                    }
                }
            }
        }
    }
    
    func removeBorders(from array: [UIView]) {
        for item in array {
            item.layer.borderWidth = 0
        }
    }
}
