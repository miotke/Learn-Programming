//
//  Category.swift
//  CoderSwag
//
//  Created by Andrew on 5/6/18.
//  Copyright © 2018 Andrew. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
