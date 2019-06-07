//
//  TableViewCell.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var octaneLevelLabel: UILabel!
    @IBOutlet weak var amountSpentLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }
    
    public func configureCell(configureCell: FuelTracking) {
        dateLabel.text = configureCell.dateOfEntry
        octaneLevelLabel.text = "Octane Level: \(configureCell.octaneLevel!)"
        amountSpentLabel.text = "Price per Gallon: \(configureCell.price!)"
    }
}
