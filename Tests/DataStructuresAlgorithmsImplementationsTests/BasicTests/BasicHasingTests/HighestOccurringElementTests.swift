//
//  HighestOccurringElementTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 23/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class HighestOccurringElementTests: XCTestCase {
    
    var systemUnderTest: HighestOccurringElement!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = HighestOccurringElement()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testFindHighestOccurringElement_EmptyArray() {
        let output = systemUnderTest.findHighestOccurringElement(numbers: [])
        XCTAssertEqual(output, 0)
    }
    
    func testFindHighestOccurringElement_SingleElement() {
        let output = systemUnderTest.findHighestOccurringElement(numbers: [5])
        XCTAssertEqual(output, 5)
    }
    
    // MARK: - Positive Conditions
    
    func testFindHighestOccurringElement_AllUniqueElements() {
        let output = systemUnderTest.findHighestOccurringElement(numbers: [3, 1, 4, 2])
        XCTAssertEqual(output, 1)
    }
    
    func testFindHighestOccurringElement_ClearHighestOccurringElement() {
        let output = systemUnderTest.findHighestOccurringElement(numbers: [1, 2, 2, 3, 3, 3, 4, 4])
        XCTAssertEqual(output, 3)
    }
    
    func testFindHighestOccurringElement_SameFrequency_ReturnsSmallestElement() {
        let output = systemUnderTest.findHighestOccurringElement(numbers: [4, 4, 2, 2, 8, 8])
        XCTAssertEqual(output, 2)
    }
    
    func testFindHighestOccurringElement_LargeArray() {
        let array = Array(repeating: 5, count: 1000) + Array(repeating: 10, count: 500)
        let output = systemUnderTest.findHighestOccurringElement(numbers: array)
        XCTAssertEqual(output, 5)
    }
}
