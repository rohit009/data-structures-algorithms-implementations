//
//  PerfectNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class PerfectNumberTests: XCTestCase {
    
    var systemUnderTest: PerfectNumber!
    
    override func setUp() {
        systemUnderTest = PerfectNumber()
    }
    
    func testPerfectNumber_Input1() {
        let output = systemUnderTest.isPerfectNumber(number: 6)
        XCTAssertTrue(output)
    }
    
    func testPerfectNumber_Input2() {
        let output = systemUnderTest.isPerfectNumber(number: 28)
        XCTAssertTrue(output)
    }
    
    func testPerfectNumber_Input3() {
        let output = systemUnderTest.isPerfectNumber(number: 496)
        XCTAssertTrue(output)
    }
    
    func testPerfectNumber_Input4() {
        let output = systemUnderTest.isPerfectNumber(number: 8128)
        XCTAssertTrue(output)
    }
    
    func testPerfectNumber_Input5() {
        let output = systemUnderTest.isPerfectNumber(number: 12)
        XCTAssertFalse(output)
    }
    
    func testPerfectNumber_Input6() {
        let output = systemUnderTest.isPerfectNumber(number: 25)
        XCTAssertFalse(output)
    }
    
    func testPerfectNumber_Input7() {
        let output = systemUnderTest.isPerfectNumber(number: 0)
        XCTAssertFalse(output)
    }
    
    func testPerfectNumber_Input8() {
        let output = systemUnderTest.isPerfectNumber(number: -28)
        XCTAssertFalse(output)
    }
    
    func testPerfectNumber_Input9() {
        let output = systemUnderTest.isPerfectNumber(number: 1)
        XCTAssertFalse(output)
    }
}
