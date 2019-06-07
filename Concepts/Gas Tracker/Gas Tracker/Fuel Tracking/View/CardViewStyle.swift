//
//  CardViewStyle.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/16/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class CardViewStyle: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 8.0
        self.clipsToBounds = true
        
        dropShadow()
    }
    
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowRadius = 1.5
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
