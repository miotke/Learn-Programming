//
//  LgTextLabel.swift
//  LgText
//
//  Created by Andrew Miotke on 3/16/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class LgTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        createView()
    }
    
    func createView() {
        self.textAlignment = .center
        self.textColor = UIColor.white
        self.font = UIFont(name: "System Font", size: 90)
        self.backgroundColor = UIColor.black
    }
}
