//
//  SelfConfiguringCell.swift
//  UICollectionViewCompositionalLayout
//
//  Created by Andrew Miotke on 12/21/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

// MARK: - Use for all collection view cells in the app

protocol SelfConfiguringCell {
    static var reuseIdentifier: String { get }
    func configure(with app: App)
}
