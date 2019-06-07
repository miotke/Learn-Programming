//
//  ButtonStyle.swift
//  Audi RS
//
//  Created by Andrew Miotke on 6/16/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ButtonStyle: UIButton {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor.darkGray
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = self.frame.height / 2
        super.awakeFromNib()
    }
}
