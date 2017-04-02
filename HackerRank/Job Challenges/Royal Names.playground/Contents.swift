//: Playground - noun: a place where people can play

import UIKit
import Foundation

func convertRomanToInt(romanString: String) -> Int {
    var result = 0
    var maxValue = 0
    
    romanString.characters.reversed().forEach {
        let value: Int
        switch $0 {
            
        case "L":
            value = 50
        case "X":
            value = 10
        case "V":
            value = 5
        case "I":
            value = 1
        default:
            value = 0
        }
        maxValue = max(value, maxValue)
        result += value == maxValue ? value : -value
    }
    return result
}

func getSortedList(names: [String]) -> [String] {
    
    let sorted = names.sorted { (s1, s2) -> Bool in
        
        let name1Array = s1.components(separatedBy: " ")
        let name1 = name1Array[0]
        let num1Roman = name1Array[1]
        
        let name2Array = s2.components(separatedBy: " ")
        let name2 = name2Array[0]
        let num2Roman = name2Array[1]
        
        if name1 != name2 {
            // If first names are not the same, sort lexicographically
            return s1.compare(s2) == .orderedAscending
        } else {
            let num1 = convertRomanToInt(romanString: num1Roman)
            let num2 = convertRomanToInt(romanString: num2Roman)
            
            return num1 < num2
        }
        
    }
    
    return sorted
}

let names = ["Louis IX","Phil II", "Louis VIII", "Phil I"]
let sorted  = getSortedList(names: names)
sorted