//
//  OctaneButton.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class OctaneButtonStyle: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        styleOctaneButtons()
    }
    
    func styleOctaneButtons() {
        setTitleColor(UIColor.white, for: .normal)
        #warning("Pick better colors for these buttons")
        backgroundColor = UIColor.black
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
    }
}
