//
//  GetCurrentDateWhenSaving.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/9/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

class GetCurrentDateWhenSaving {
    
    var savedDate = ""
    
    func setCurrentDate() {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        let dateString = dateFormatter.string(from: date)
        savedDate = dateString
    }
}
