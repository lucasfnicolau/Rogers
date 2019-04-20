//
//  CircleView.swift
//  Rogers
//
//  Created by Nicolau on 17/04/19.
//  Copyright © 2019 LAP. All rights reserved.
//

import UIKit

@IBDesignable
class CircleView: UIView {
    
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.width / 2
    }
    
}
