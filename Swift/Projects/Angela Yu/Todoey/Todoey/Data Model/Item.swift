//
//  Item.swift
//  Todoey
//
//  Created by Andrew Miotke on 11/19/19.
//  Copyright © 2019 FallenLeaf. All rights reserved.
//

import Foundation

class Item: Encodable {
    var title: String = ""
    var done: Bool = false
}
