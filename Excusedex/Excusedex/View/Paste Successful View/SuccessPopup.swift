//
//  SuccessPopup.swift
//  Excusedex
//
//  Created by Andrew Miotke on 12/30/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class SuccessPopup: UIView {
    
    let colors = Colors()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupPopup()
    }

    func setupPopup() {
        self.isHidden = false
        self.backgroundColor = colors.blue
        print("show popup")
    }
}
