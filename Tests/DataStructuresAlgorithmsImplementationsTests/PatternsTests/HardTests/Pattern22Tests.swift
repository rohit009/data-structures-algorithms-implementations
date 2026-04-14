//
//  Pattern22Tests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 14/04/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class Pattern22Tests: XCTestCase {
    
    var systemUnderTest: Pattern22!
    
    override func setUp() {
        systemUnderTest = Pattern22()
    }
    
    func testPattern22_Input_4() {
        let _ = systemUnderTest.createPattern(numberOfLines: 4)
    }
    
    func testPattern22_Input_1() {
        let _ = systemUnderTest.createPattern(numberOfLines: 1)
    }
    
    func testPattern22_Input_0() {
        let _ = systemUnderTest.createPattern(numberOfLines: 0)
    }
    
    func testPattern22_Input_6() {
        let _ = systemUnderTest.createPattern(numberOfLines: 6)
    }
    
    func testPattern22_Input_Minus1() {
        let _ = systemUnderTest.createPattern(numberOfLines: -1)
    }
    
    func testPattern22_Input_2() {
        let _ = systemUnderTest.createPattern(numberOfLines: 2)
    }
}
