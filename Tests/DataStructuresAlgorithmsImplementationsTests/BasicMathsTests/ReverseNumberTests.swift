//
//  ReverseNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class ReverseNumberTests: XCTestCase {
    
    var systemUnderTest: ReverseNumber!
    
    override func setUp() {
        systemUnderTest = ReverseNumber()
    }
    
    func testReverseNumber_Input1() {
        let output = systemUnderTest.reverseNumber(number: 4)
        
        XCTAssertEqual(output, 4)
    }
    
    func testReverseNumber_Input2() {
        let output = systemUnderTest.reverseNumber(number: 0)
        
        XCTAssertEqual(output, 0)
    }
    
    func testReverseNumber_Input3() {
        let output = systemUnderTest.reverseNumber(number: 72)
        
        XCTAssertEqual(output, 27)
    }

    func testReverseNumber_Input4() {
        let output = systemUnderTest.reverseNumber(number: 345)
        
        XCTAssertEqual(output, 543)
    }
    
    func testReverseNumber_Input5() {
        let output = systemUnderTest.reverseNumber(number: 9875)
        
        XCTAssertEqual(output, 5789)
    }
    
    func testReverseNumber_Input6() {
        let output = systemUnderTest.reverseNumber(number: -500)
        
        XCTAssertEqual(output, -5)
    }
    
    func testReverseNumber_Input7() {
        let output = systemUnderTest.reverseNumber(number: -721)
        
        XCTAssertEqual(output, -127)
    }
}
