//
//  SelectionContainerView.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/1/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class SelectionContainerView: UIView {

    // MARK: Constants
    let colors = Colors()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 12
    }

}
