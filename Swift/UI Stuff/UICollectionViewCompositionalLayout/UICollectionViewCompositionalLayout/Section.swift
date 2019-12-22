//
//  Section.swift
//  UICollectionViewCompositionalLayout
//
//  Created by Andrew Miotke on 12/21/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

struct Section: Decodable, Hashable {
    let id: Int
    let type: String
    let title: String
    let subtitle: String
    let items: [App]
}
