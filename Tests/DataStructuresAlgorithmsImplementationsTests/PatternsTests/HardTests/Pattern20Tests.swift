//
//  Pattern20Tests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 13/04/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class Pattern20Tests: XCTestCase {
    
    var systemUnderTest: Pattern20!
    
    override func setUp() {
        systemUnderTest = Pattern20()
    }
    
    func testPattern20_Input1() {
        let _ = systemUnderTest.createPattern(numberOfLines: 4)
    }
    
    func testPattern20_Input2() {
        let _ = systemUnderTest.createPattern(numberOfLines: 1)
    }
    
    func testPattern20_Input3() {
        let _ = systemUnderTest.createPattern(numberOfLines: 0)
    }
    
    func testPattern20_Input4() {
        let _ = systemUnderTest.createPattern(numberOfLines: 6)
    }
    
    func testPattern20_Input5() {
        let _ = systemUnderTest.createPattern(numberOfLines: -1)
    }
}
