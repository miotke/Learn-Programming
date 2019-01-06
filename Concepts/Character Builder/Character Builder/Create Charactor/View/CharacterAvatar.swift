//
//  CharacterAvatar.swift
//  Character Builder
//
//  Created by Andrew Miotke on 1/5/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class CharacterAvatarImageView: UIImageView {
    
    let characterAvatarSegmentControl = CharacterAvatarSegmentControl()

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func avatarGender() {
        if characterAvatarSegmentControl.selectedSegmentIndex == 0 {
            self.image = UIImage(named: "")
        } else {
            self.image = UIImage(named: "")
        }
    }
}

class CharacterAvatarSegmentControl: UISegmentedControl {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setTitle("Male", forSegmentAt: 0)
        self.setTitle("Female", forSegmentAt: 1)
    }
}
