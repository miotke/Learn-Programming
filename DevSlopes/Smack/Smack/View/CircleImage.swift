//
//  CircleImage.swift
//  Smack
//
//  Created by Andrew on 5/13/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
