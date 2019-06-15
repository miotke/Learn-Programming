//
//  TrackFuelTextView.swift
//  Gas Tracker
//
//  Created by Andrew Miotke on 12/8/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import UIKit

class TrackFuelTextView: UITextField {
    
    func trackFuelTextViewStyle() {
        
       .BorderStyle.none
    }
    
    func setupViewForStyling() {
        let storyboard = UIStoryboard(name: "FuelTrackingViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "FuelTrackingViewController")
        
    }
}
