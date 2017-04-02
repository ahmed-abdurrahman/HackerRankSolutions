//
//  TwoStacksTests.swift
//  HackerRank
//
//  Created by Ahmed on 4/2/17.
//  Copyright © 2017 HackerRank. All rights reserved.
//

import XCTest
@testable import HackerRank


class TwoStacksTests: XCTestCase {
    
    func testBasicScenario(){
    
        
        let ops:[(TwoStacks.Operation, Int?)] = [
            (.enQ, 1),
            (.enQ, 5),
            (.deQ, nil),
            (.printHead, nil)
        ]
        
        TwoStacks().simulateQueue(ops: ops)
            XCTAssertTrue(true)
    }
        
}
