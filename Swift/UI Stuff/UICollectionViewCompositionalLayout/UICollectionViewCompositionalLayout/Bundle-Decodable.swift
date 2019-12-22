//
//  Bundle-Decodable.swift
//  UICollectionViewCompositionalLayout
//
//  Created by Andrew Miotke on 12/21/19.
//  Copyright © 2019 andrewmiotke. All rights reserved.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil)
            else {
                fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        return loaded
    }
}
