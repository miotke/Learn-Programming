//
//  StyleResetAllDataButton.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/9/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class StyleResetAllDataButton: UIButton {
    
    let colors = Colors()

    override func awakeFromNib() {
        super.awakeFromNib()
        styleResetAllDataButton()
    }
    
    func styleResetAllDataButton() {
        backgroundColor = colors.clearAllDataButtonRed
        setTitleColor(UIColor.white, for: .normal)
        setTitle("Clear All Data", for: .normal)
    }
}
