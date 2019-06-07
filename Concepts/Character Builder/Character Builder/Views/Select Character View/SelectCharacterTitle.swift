//
//  SelectCharacterTitle.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/1/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class SelectCharacterTitle: UILabel {

    // MARK: Constants
    let colors = Colors()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.text = "Select Character"
        self.textAlignment = .center
        self.textColor = colors.white
        self.font = UIFont(name: "System Font", size: 80)
    }
}
