//
//  helpers.swift
//  extensions-dance-party
//
//  Created by Andrew on 4/28/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import UIKit

func generateRandomNumbers(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 1 ... quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
