//
//  01.swift
//  HackerRank
//
//  Created by Ahmed on 4/2/17.
//  Copyright © 2017 HackerRank. All rights reserved.
//

import XCTest
@testable import HackerRank


class LeftRotationTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
 
    
    func testBasicScenario() {
        let toRotate = [1, 2, 3, 4, 5]
        let expectedResult = [5, 1, 2, 3, 4]
        
        let result = LeftRotation().leftRotate(n: toRotate, d: 4)
        
        XCTAssertEqual(expectedResult, result, "Basic test failed")
    }
    
}
