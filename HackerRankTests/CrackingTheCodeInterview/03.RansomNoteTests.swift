//
//  RansomNoteTests.swift
//  HackerRank
//
//  Created by Ahmed Abdurrahman on 1/19/17.
//  Copyright © 2017 HackerRank. All rights reserved.
//

import XCTest
@testable import HackerRank

class RansomNoteTests: XCTestCase {
    
    
    func testBasicScenario() {
        let rNote = RansomNote()
        
        let mag = "give me one grand today night"
        let note = "give one grand today"
        
        XCTAssertTrue(rNote.canUseMagazineWithMaps(magText: mag, ransomNote: note), "Basic test failed")
    }
    
    
    
}
