//
//  MainTableviewCell.swift
//  Seed
//
//  Created by Andrew Miotke on 1/6/19.
//  Copyright © 2019 Andrew Miotke. All rights reserved.
//

import UIKit

class ActivityCell: UITableViewCell {
    
    @IBOutlet weak var tableviewImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableviewImage.image = UIImage(named: "cannabis")
        productNameLabel.text = "Some Product Name"
        detailLabel.text = "5/5 - Some strain"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
