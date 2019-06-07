//
//  SaveButtonStyle.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class SaveButtonStyle: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        setTitle("Save Tracking", for: .normal)
        
        #warning("Pick a better color combo")
        backgroundColor = UIColor.black
        setTitleColor(UIColor.white, for: .normal)
    }

}
