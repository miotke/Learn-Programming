//
//  ButtonStyling.swift
//  VW Golf
//
//  Created by Andrew Miotke on 6/12/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class BaseButtonStyling: UIButton {
    
    override func awakeFromNib() {
        self.backgroundColor = UIColor(red: 0.2126879096, green: 0.2239724994, blue: 0.265286684, alpha: 1)
        self.setTitle("Choose a model", for: .normal)
        self.setTitleColor(UIColor.white, for: .normal)
        
        super.awakeFromNib()
    }
    
}
