//
//  06.TwoStacks.swift
//  HackerRank
//
//  Created by Ahmed on 4/2/17.
//  Copyright © 2017 HackerRank. All rights reserved.
//

import Foundation

class Queue<T> {

    // Will use arrays to simulate stack, limiting to Stacks API
    var oldestFirstStack = [T]()
    var newestFirstStack = [T]()
    
    
    private func moveElementsToNewest() {
        while !oldestFirstStack.isEmpty {
            newestFirstStack.append(oldestFirstStack.popLast()!)
        }
    }
    
    private func moveElementsToOldest() {
        while !newestFirstStack.isEmpty {
            oldestFirstStack.append(newestFirstStack.popLast()!)
        }
    }
    
    func enquque(element: T) {
        // Enqueue operation is done in O(2n)
        moveElementsToNewest()
        newestFirstStack.append(element)
        moveElementsToOldest()
    }
    
    @discardableResult func dequeue() -> T? {
        return oldestFirstStack.popLast()
    }
    
    func printHead(){
        print(oldestFirstStack.last ?? "")
    }
}

class TwoStacks {
 
    enum Operation: Int {
        case enQ = 1
        case deQ = 2
        case printHead = 3
    }
    
    func solve(){
        let input = readInput()
        simulateQueue(ops: input)
    }
    
    func simulateQueue(ops: [(Operation, Int?)]) {
        
        let queue = Queue<Int>()
        
        for (operation, operand) in ops {
            switch operation {
            case .enQ:
                queue.enquque(element: operand!)
            case .deQ:
                queue.dequeue()
            case .printHead:
                queue.printHead()
            }
        }
    }
    
    func readInput() -> [(Operation, Int?)] {
        
        let operationsCount = Int(readLine()!)!
        var operations = [(Operation, Int?)]()
        
        for _ in 0..<operationsCount {
            let parts = readLine()!.components(separatedBy: " ")
            let operation = Operation(rawValue: Int(parts[0])!)!
            var operand:Int? = nil
            
            if operation == .enQ {
                operand = Int(parts[1])!
            }
            
            operations.append( (operation, operand) )
        }
        
        return operations
    }
}
