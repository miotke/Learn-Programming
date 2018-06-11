//
//  ToDoItem.swift
//  ClearStyle
//
//  Created by Andrew Miotke on 8/25/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import UIKit

class ToDoItem: NSObject {
    //A text description of this item.
    var text: String
    
    //A Boolean value that determines the completed state of this item.
    var completed: Bool
    
    //Returns a ToDoItem initalized with the given text and default completed value.
    init(text: String) {
        self.text = text
        self.completed = false
    }

}
