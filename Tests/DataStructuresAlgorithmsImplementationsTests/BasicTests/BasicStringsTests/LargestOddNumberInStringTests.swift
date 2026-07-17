//
//  LargestOddNumberInStringTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 28/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class LargestOddNumberInStringTests: XCTestCase {
    
    var systemUnderTest: LargestOddNumberInString!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LargestOddNumberInString()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testFindLargestOddNumber_EmptyString() {
        let result = systemUnderTest.findLargestOddNumber(string: "")
        XCTAssertEqual(result, "")
    }
    
    func testFindLargestOddNumber_AllZeros() {
        let result = systemUnderTest.findLargestOddNumber(string: "0000")
        XCTAssertEqual(result, "")
    }
    
    func testFindLargestOddNumber_NoOddNumbers() {
        let result = systemUnderTest.findLargestOddNumber(string: "42068")
        XCTAssertEqual(result, "")
    }
    
    func testFindLargestOddNumber_SingleOddDigit() {
        let result = systemUnderTest.findLargestOddNumber(string: "7")
        XCTAssertEqual(result, "7")
    }
    
    func testFindLargestOddNumber_SingleEvenDigit() {
        let result = systemUnderTest.findLargestOddNumber(string: "8")
        XCTAssertEqual(result, "")
    }
    
    // MARK: - Core Logic Tests
    
    func testFindLargestOddNumber_StandardExample() {
        // Example 1: "5347" -> "5347"
        let result = systemUnderTest.findLargestOddNumber(string: "5347")
        XCTAssertEqual(result, "5347")
    }
    
    func testFindLargestOddNumber_WithLeadingZeros() {
        // Example 2: "0214638" -> "21463"
        let result = systemUnderTest.findLargestOddNumber(string: "0214638")
        XCTAssertEqual(result, "21463")
    }
    
    func testFindLargestOddNumber_EndsWithEvenContainsOdd() {
        // Only valid odd substring is up to the last odd digit
        // "1234" -> "123"
        let result = systemUnderTest.findLargestOddNumber(string: "1234")
        XCTAssertEqual(result, "123")
    }
    
    func testFindLargestOddNumber_LeadingZerosAllOdd() {
        // "000135" -> "135"
        let result = systemUnderTest.findLargestOddNumber(string: "000135")
        XCTAssertEqual(result, "135")
    }
    
    func testFindLargestOddNumber_OddInMiddleOfZeros() {
        // "00700" -> "7"
        let result = systemUnderTest.findLargestOddNumber(string: "00700")
        XCTAssertEqual(result, "7")
    }
    
    func testFindLargestOddNumber_SubtleBug32() {
        // "32" -> "3"
        // This validates that the index traversal doesn't break prematurely at startIndex
        let result = systemUnderTest.findLargestOddNumber(string: "32")
        XCTAssertEqual(result, "3")
    }
}
