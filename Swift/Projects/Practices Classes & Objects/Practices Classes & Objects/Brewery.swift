//
//  Brewery.swift
//  Practices Classes & Objects
//
//  Created by Andrew Miotke on 11/17/18.
//  Copyright © 2018 Andrew Miotke. All rights reserved.
//

import Foundation

class BreweryDetails {
    
    let wingMangBrewery = "Wing Man Brewery"
    
}

class Brewery {
    var breweryDetails = BreweryDetails()
    
    var breweryName: String
    var dateEstablished: Int = 0
    var breweryDescription: String
    var popularBeerType: String
    
    init() {
        breweryName = breweryDetails.wingMangBrewery
        dateEstablished = 2001
        breweryDescription = "Brewery in Tacoma"
        popularBeerType = "IPA"
    }
}
