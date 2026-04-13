//
//  Pattern18Tests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 13/04/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class Pattern18Tests: XCTestCase {
    
    var systemUnderTest: Pattern18!
    
    override func setUp() {
        systemUnderTest = Pattern18()
    }
    
    func testPattern18_Input1() {
        let _ = systemUnderTest.createPattern(numberOfLines: 4)
    }
    
    func testPattern18_Input2() {
        let _ = systemUnderTest.createPattern(numberOfLines: 1)
    }
    
    func testPattern18_Input3() {
        let _ = systemUnderTest.createPattern(numberOfLines: 0)
    }
    
    func testPattern18_Input4() {
        let _ = systemUnderTest.createPattern(numberOfLines: 6)
    }
    
    func testPattern18_Input5() {
        let _ = systemUnderTest.createPattern(numberOfLines: -1)
    }
}
