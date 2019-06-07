//
//  LabelStyle.swift
//  Audi RS
//
//  Created by Andrew Miotke on 6/16/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class LabelStyle: UILabel {

    override func awakeFromNib() {
        self.textAlignment = .center
        self.font = UIFont(name: "Avenir Next", size: 30)
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.darkGray.cgColor
        super.awakeFromNib()
    }

}
