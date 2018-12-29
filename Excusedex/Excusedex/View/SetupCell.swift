//
//  SetupCell.swift
//  Excusedex
//
//  Created by Andrew Miotke on 12/22/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class SetupCell: UITableViewCell {
    
    
    @IBOutlet weak var exuseLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.exuseLabel.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
