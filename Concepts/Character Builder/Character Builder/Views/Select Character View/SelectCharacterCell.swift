//
//  SelectCharacterCell.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/1/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class SelectCharacterCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var characterAvatar: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterLevel: UILabel!
    @IBOutlet weak var characterClass: UILabel!
    
    let characterArray = ["Maggie", "Gus", "Kevin", "Jane", "Rory", "Andrew", "Jeffery", "Kramer", "Polly"]

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
