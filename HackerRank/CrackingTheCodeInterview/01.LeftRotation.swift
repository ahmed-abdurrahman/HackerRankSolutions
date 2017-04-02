//
//  01.LeftRotation.swift
//  HackerRank
//
//  Created by Ahmed on 4/2/17.
//  Copyright © 2017 HackerRank. All rights reserved.
//

import Foundation


class LeftRotation {
    /// Problem url: https://www.hackerrank.com/challenges/ctci-array-left-rotation
    
    func readInput() -> ([Int], Int) {
        let line1 = readLine()!
        let line2 = readLine()!
        
        let d = Int(line1.components(separatedBy: " ")[1])!
        let n = line2.components(separatedBy: " ").map { (ni) -> Int in
            return Int(ni)!
        }
        
        return (n, d)
    }
    
    func leftRotate(n: [Int], d: Int) -> [Int] {
        var out = n
        for i in 0..<n.count {
            var shiftedIndex = i - d
            if shiftedIndex < 0 {
                shiftedIndex = n.count + shiftedIndex
            }
            
            out[shiftedIndex] = n[i]
        }
        
        return out
    }
    
    func printResult(result: [Int]) {
        var outStr = ""
        for (i, j) in result.enumerated() {
            if i > 0 {outStr += " \(j)" }
            else {outStr += "\(j)" }
        }
        
        print(outStr)
    }
}
