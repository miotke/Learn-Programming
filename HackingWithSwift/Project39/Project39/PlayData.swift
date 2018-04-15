//
//  PlayData.swift
//  Project39
//
//  Created by Andrew Miotke on 11/14/17.
//  Copyright © 2017 Andrew Miotke. All rights reserved.
//

import Foundation

class PlayData {
    var allWords = [String]()
    var wordCounts: NSCountedSet!
    var filteredWords = [String]()
    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                allWords = allWords.filter { $0 != "" }
            }
        }
        
        wordCounts = NSCountedSet(array: allWords)
        let sorted = wordCounts.allObjects.sorted { wordCounts.count(for: $0) > wordCounts.count(for: $1) }
        allWords = sorted as! [String]
    }
    
    func applyUserFilters(_ input: String) {
        if let userNumber = Int(input) {
            // we got a number
            filteredWords = allWords.filter { self.wordCounts.count(for: $0) >= userNumber }
            
        } else {
            // we got a string
            filteredWords = allWords.filter { $0.range(of: input, options: .caseInsensitive) != nil}
        }
    }
    
    
}
