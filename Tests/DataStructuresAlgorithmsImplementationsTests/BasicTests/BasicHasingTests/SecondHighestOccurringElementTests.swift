//
//  SecondHighestOccurringElementTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 26/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class SecondHighestOccurringElementTests: XCTestCase {
    
    var systemUnderTest: SecondHighestOccurringElement!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = SecondHighestOccurringElement()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testCalculateSecondHighestElement_EmptyArray() {
        let output = systemUnderTest.calculateSecondHighestElement(numbers: [])
        XCTAssertEqual(output, -1)
    }
    
    func testCalculateSecondHighestElement_SingleElement() {
        let output = systemUnderTest.calculateSecondHighestElement(numbers: [5])
        XCTAssertEqual(output, -1)
    }
    
    // MARK: - Positive/Example Conditions
    
    func testCalculateSecondHighestElement_Example1() {
        // [1, 2, 2, 3, 3, 3] -> 2 is second most frequent (appears 2 times), 3 is most frequent (3 times)
        let output = systemUnderTest.calculateSecondHighestElement(numbers: [1, 2, 2, 3, 3, 3])
        XCTAssertEqual(output, 2)
    }
    
    func testCalculateSecondHighestElement_Example2() {
        // [4, 4, 5, 5, 6, 7] -> 4 (freq 2), 5 (freq 2), 6 (freq 1), 7 (freq 1)
        // Highest freq: 2 (elements 4, 5)
        // Second highest freq: 1 (elements 6, 7)
        // Smallest of second highest frequent elements: 6
        let output = systemUnderTest.calculateSecondHighestElement(numbers: [4, 4, 5, 5, 6, 7])
        XCTAssertEqual(output, 6)
    }
    
    func testCalculateSecondHighestElement_Example3() {
        // [10, 9, 7, 7] -> 7 (freq 2), 9 (freq 1), 10 (freq 1)
        // Highest freq: 2 (element 7)
        // Second highest freq: 1 (elements 9, 10)
        // Smallest of second highest frequent elements: 9
        let output = systemUnderTest.calculateSecondHighestElement(numbers: [10, 9, 7, 7])
        XCTAssertEqual(output, 9)
    }
    
    func testCalculateSecondHighestElement_AllSameFrequency() {
        // [1, 1, 2, 2] -> 1 (freq 2), 2 (freq 2). No second highest frequent element exists.
        let output = systemUnderTest.calculateSecondHighestElement(numbers: [1, 1, 2, 2])
        XCTAssertEqual(output, -1)
    }
    
    func testCalculateSecondHighestElement_NoSecondHighestExists() {
        // [3, 3, 3] -> Only one unique element, no second highest exists.
        let output = systemUnderTest.calculateSecondHighestElement(numbers: [3, 3, 3])
        XCTAssertEqual(output, -1)
    }
}
