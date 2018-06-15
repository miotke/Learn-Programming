//
//  ModelButtonStyling.swift
//  VW Golf
//
//  Created by Andrew Miotke on 6/12/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ModelButtonStyling: UIButton {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor(red: 0.2126879096, green: 0.2239724994, blue: 0.265286684, alpha: 1)
        self.setTitleColor(UIColor.white, for: .normal)
        self.layer.cornerRadius = self.frame.height / 2
        super.awakeFromNib()
    }
}
