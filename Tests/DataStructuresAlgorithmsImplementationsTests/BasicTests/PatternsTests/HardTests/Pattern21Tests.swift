//
//  Pattern21Tests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 13/04/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class Pattern21Tests: XCTestCase {
    
    var systemUnderTest: Pattern21!
    
    override func setUp() {
        systemUnderTest = Pattern21()
    }
    
    func testPattern21_Input1() {
        let _ = systemUnderTest.createPattern(numberOfLines: 4)
    }
    
    func testPattern21_Input2() {
        let _ = systemUnderTest.createPattern(numberOfLines: 1)
    }
    
    func testPattern21_Input3() {
        let _ = systemUnderTest.createPattern(numberOfLines: 0)
    }
    
    func testPattern21_Input4() {
        let _ = systemUnderTest.createPattern(numberOfLines: 6)
    }
    
    func testPattern21_Input5() {
        let _ = systemUnderTest.createPattern(numberOfLines: -1)
    }
}
