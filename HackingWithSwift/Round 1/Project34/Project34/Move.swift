//
//  Move.swift
//  Project34
//
//  Created by Andrew Miotke on 11/3/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import GameplayKit
import UIKit

class Move: NSObject, GKGameModelUpdate {
    var value: Int = 0
    var column: Int
    
    init(column: Int) {
        self.column = column
    }
}
