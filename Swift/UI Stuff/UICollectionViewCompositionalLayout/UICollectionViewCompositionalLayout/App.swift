//
//  App.swift
//  UICollectionViewCompositionalLayout
//
//  Created by Andrew Miotke on 12/21/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

struct App: Decodable, Hashable {
    let id: Int
    let tagline: String
    let name: String
    let subheading: String
    let image: String
    let iap: Bool
}
