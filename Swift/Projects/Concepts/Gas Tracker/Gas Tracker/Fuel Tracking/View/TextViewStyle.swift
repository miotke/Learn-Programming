//
//  TextViewStyle.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class TextFieldStyle: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        attributedPlaceholder = NSAttributedString(string: "", attributes: [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.boldSystemFont(ofSize: 14.0)
            ])
        
        self.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
    }
}
