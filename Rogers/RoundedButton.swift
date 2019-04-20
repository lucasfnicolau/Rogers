//
//  RoundedButton.swift
//  Rogers
//
//  Created by Nicolau on 18/04/19.
//  Copyright © 2019 LAP. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 15
    }

}
