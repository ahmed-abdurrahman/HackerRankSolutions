//
//  MakingAnagarams.swift
//  HackerRank
//
//  Created by Ahmed Abdurrahman on 11/25/16.
//  Copyright © 2016 HackerRank. All rights reserved.
//

import Foundation

class MakingAnagarams {
    
    func findNumberOfDeletionsRequiredToMakeAnagarams(_ a: String, b: String) -> Int {
        // https://www.hackerrank.com/challenges/ctci-making-anagrams
        var counts = [Character:Int]()
        
        for char in a.characters {
            let count = counts[char] ?? 0
            counts[char] = count + 1
        }
        
        for char in b.characters {
            let count = counts[char] ?? 0
            counts[char] = count - 1
        }
        
        let sum = counts.values.map { (c) -> Int in
            if c < 0 {return -c}
            return c
            }.reduce(0, +)
        
        print(sum)
        return sum
    }
}
