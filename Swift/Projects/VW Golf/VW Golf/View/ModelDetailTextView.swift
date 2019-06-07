//
//  TextViewStyle.swift
//  VW Golf
//
//  Created by Andrew Miotke on 6/13/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

class ModelDetailTextView: UITextView {

    override func awakeFromNib() {
        self.font = UIFont(name: "Avenir Next", size: 20)
        self.isEditable = false
        self.isScrollEnabled = true
        super.awakeFromNib()
    }

}
