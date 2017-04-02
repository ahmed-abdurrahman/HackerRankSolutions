//
//  04.BalancedBrackets.swift
//  HackerRank
//
//  Created by Ahmed on 4/2/17.
//  Copyright © 2017 HackerRank. All rights reserved.
//

import Foundation

class BalancedBrackets {

    /// Problem url: https://www.hackerrank.com/challenges/ctci-balanced-brackets
    
    let counterBracket: [Character:Character]  = [
        ")":"(",
        "}":"{",
        "]":"["
    ]
    
    func solve() {
        let input = readInput()
        let result = isBalanced(inputArray: input)
        printResult(result: result)
    }
    
    func isBalanced(inputArray: [String]) -> [Bool] {
        
        var result = [Bool]()
        
        
        for input in inputArray {
            
            result.append(isBalanced(input: input))
        }
        
        return result
    }
    
    func isBalanced(input: String) -> Bool {
        var stack = [Character]()
        
        checkLoop: for (_,char) in input.characters.enumerated() {
            
            switch char {
            case "(","{","[":
                stack.append(char)
            case ")","}","]":
                
                guard let top = stack.popLast()
                    , counterBracket[char]! == top
                    else {
                        return false
                }
                
            default:
                return false
            }
        }
        
        return stack.isEmpty
    }
    
    func readInput() -> [String] {
        let numberOfLines = Int(readLine()!)!
        var input = [String]()
        
        for _ in 0..<numberOfLines {
            input.append(readLine()!)
        }
        
        return input
    }
    
    func printResult(result: [Bool]){
        for isBalanced in result {
            isBalanced ? print("YES") : print("NO")
        }
    }
}
