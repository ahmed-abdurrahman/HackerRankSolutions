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
        var stack :[Character]!
        
        for input in inputArray {
            
            stack = [Character]()
            
            checkLoop: for (i,char) in input.characters.enumerated() {
                
                switch char {
                case "(","{","[":
                    stack.append(char)
                case ")","}","]":
                    
                    if let top = stack.popLast()
                        , counterBracket[char]! == top {
                        // It's Ok, continue checkig..
                    } else {
                        result.append(false)
                        break checkLoop
                    }
                    
                default:
                    result.append(false)
                    break checkLoop
                }
                
                if i == input.characters.count - 1 {
                    result.append(stack.isEmpty)
                }
            }
            
            
        }
        
        return result
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
