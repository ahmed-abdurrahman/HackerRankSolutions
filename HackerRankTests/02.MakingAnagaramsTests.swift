//
//  MakingAnagaramsTests.swift
//  HackerRank
//
//  Created by Ahmed Abdurrahman on 11/25/16.
//  Copyright © 2016 HackerRank. All rights reserved.
//

import XCTest

class MakingAnagaramsTests: XCTestCase {
    
    func testExample() {

        let ma = MakingAnagarams()
        
        let a = "cde"
        let b = "abc"
        XCTAssertEqual(ma.findNumberOfDeletionsRequiredToMakeAnagarams(a, b: b), 4)
    }

}
