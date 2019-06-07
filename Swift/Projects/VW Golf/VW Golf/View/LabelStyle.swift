//
//  LabelStyle.swift
//  VW Golf
//
//  Created by Andrew Miotke on 6/13/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class LabelStyle: UILabel {

    override func awakeFromNib() {
        self.textAlignment = .center
        self.textColor = UIColor.black
        self.font = UIFont(name: "Avenir Next", size: 30)
        super.awakeFromNib()
    }

}
