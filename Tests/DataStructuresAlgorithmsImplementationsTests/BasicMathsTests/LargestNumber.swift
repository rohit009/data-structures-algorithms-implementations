//
//  LargestNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class LargestNumberTests: XCTestCase {
    
    var systemUnderTest: LargestNumber!
    
    override func setUp() {
        systemUnderTest = LargestNumber()
    }
    
    func testReverseNumber_Input1() {
        let output = systemUnderTest.findLargest(number: 4)
        
        XCTAssertEqual(output, 4)
    }
    
    func testReverseNumber_Input2() {
        let output = systemUnderTest.findLargest(number: 0)
        
        XCTAssertEqual(output, 0)
    }
    
    func testReverseNumber_Input3() {
        let output = systemUnderTest.findLargest(number: 72)
        
        XCTAssertEqual(output, 7)
    }

    func testReverseNumber_Input4() {
        let output = systemUnderTest.findLargest(number: 345)
        
        XCTAssertEqual(output, 5)
    }
    
    func testReverseNumber_Input5() {
        let output = systemUnderTest.findLargest(number: 9875)
        
        XCTAssertEqual(output, 9)
    }
    
    func testReverseNumber_Input6() {
        let output = systemUnderTest.findLargest(number: -500)
        
        XCTAssertEqual(output, 5)
    }
    
    func testReverseNumber_Input7() {
        let output = systemUnderTest.findLargest(number: -721)
        
        XCTAssertEqual(output, 7)
    }
}
