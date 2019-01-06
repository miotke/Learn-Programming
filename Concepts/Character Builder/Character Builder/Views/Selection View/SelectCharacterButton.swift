//
//  SelectCharacterButton.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/1/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class SelectCharacterButton: UIButton {

    // MARK: Constants
    let colors = Colors()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = colors.selectCharacterRed
        self.layer.cornerRadius = 12
        self.setTitle("Select Character", for: .normal)
        self.setTitleColor(colors.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "System Font", size: 25)
    }

}
