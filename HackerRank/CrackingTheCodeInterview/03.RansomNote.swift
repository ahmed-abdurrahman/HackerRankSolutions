//
//  RansomNote.swift
//  HackerRank
//
//  Created by Ahmed Abdurrahman on 1/19/17.
//  Copyright © 2017 HackerRank. All rights reserved.
//

import Foundation

class RansomNote {
    
    func canUseMagazineWithMaps(magText: String, ransomNote: String) -> Bool {
        let noteWords = ransomNote.components(separatedBy: " ")
        let magWords = magText.components(separatedBy: " ")
        
        let noteMap = buildWordCountMap(array: noteWords)
        let magMap = buildWordCountMap(array: magWords)
        
        for (word, count) in noteMap {
            if let magCount = magMap[word], count <= magCount {
                continue
            } else {
                return false
            }
        }
        
        return true
    }
    
    func buildWordCountMap(array: [String]) -> [String: Int] {
        var map = [String: Int]()
        
        for word in array {
            map[word] = (map[word] ?? 0) + 1
        }
        
        return map
    }
    
    
}
