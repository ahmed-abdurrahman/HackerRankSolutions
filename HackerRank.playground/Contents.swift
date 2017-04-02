//: Playground - noun: a place where people can play

import UIKit
@testable import HackerRank


let counterBracket: [Character:Character]  = [
    ")":"(",
    "}":"{",
    "]":"["
]

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

isBalanced(inputArray: ["[()]", "("])
