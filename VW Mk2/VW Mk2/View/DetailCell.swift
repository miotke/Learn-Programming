//
//  DetailCell.swift
//  VW Mk2
//
//  Created by Andrew Miotke on 6/30/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class DetailCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var detailType: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    func configureCell(carDetail: DetailType) {
        self.detailType.text = carDetail.year
        self.detailType.text = carDetail.motor
        self.detailType.text = carDetail.transmission
    }
}
