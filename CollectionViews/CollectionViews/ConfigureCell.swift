//
//  ConfigureCell.swift
//  CollectionViews
//
//  Created by Andrew Miotke on 6/26/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class ConfigureCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func configureCell() {
        label.text = "Label Text"
    }
    
}
