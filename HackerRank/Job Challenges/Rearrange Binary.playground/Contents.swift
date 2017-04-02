//: Playground - noun: a place where people can play

import UIKit

let num = 22
let str = String(num, radix: 2)
str.components(separatedBy: "1").count-1

func rearrange(elements: [Int]) -> [Int] {
    let sorted = elements.sorted { (e1, e2) -> Bool in

        let e1BinaryStr = String(e1, radix: 2)
        let e2BinaryStr = String(e2, radix: 2)

        let e1Count = e1BinaryStr.components(separatedBy: "1").count - 1
        let e2Count = e2BinaryStr.components(separatedBy: "1").count - 1


        if e1Count == e2Count {
            // Same number of 1s, sort by decemal value
            return e1 < e2
        } else {
            return e1Count < e2Count
        }

    }

    return sorted
}

let elements = [5,3,7,10,14]
let sorted = rearrange(elements: elements)
