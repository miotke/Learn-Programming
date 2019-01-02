//
//  CreateCharacterButton.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/1/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class CreateCharacterButton: UIButton {
    
    // MARK: Constants
    let colors = Colors()

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = colors.createCharacterBlue
        self.layer.cornerRadius = 12
        self.setTitle("Create Character Sheet", for: .normal)
        self.setTitleColor(colors.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "System Font", size: 25)
    }

}
