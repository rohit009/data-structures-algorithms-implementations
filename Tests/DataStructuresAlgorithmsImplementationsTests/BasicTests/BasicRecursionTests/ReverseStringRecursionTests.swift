//
//  ReverseStringRecursionTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 29/06/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class ReverseStringRecursionTests: XCTestCase {
    
    var systemUnderTest: ReverseStringRecursion!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = ReverseStringRecursion()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Edge Cases
    
    func testReverseString_Empty() {
        let output = systemUnderTest.reverseString(string: "")
        XCTAssertEqual(output, "")
    }
    
    func testReverseString_SingleChar() {
        let output = systemUnderTest.reverseString(string: "a")
        XCTAssertEqual(output, "a")
    }
    
    // MARK: - Basic Cases
    
    func testReverseString_EvenLength() {
        let output = systemUnderTest.reverseString(string: "abcd")
        XCTAssertEqual(output, "dcba")
    }
    
    func testReverseString_OddLength() {
        let output = systemUnderTest.reverseString(string: "hello")
        XCTAssertEqual(output, "olleh")
    }
    
    // MARK: - Variations
    
    func testReverseString_Palindrome() {
        let output = systemUnderTest.reverseString(string: "racecar")
        XCTAssertEqual(output, "racecar")
    }
    
    func testReverseString_WithSpaces() {
        let output = systemUnderTest.reverseString(string: "a b c")
        XCTAssertEqual(output, "c b a")
    }
    
    func testReverseString_SpecialCharacters() {
        let output = systemUnderTest.reverseString(string: "123!@#")
        XCTAssertEqual(output, "#@!321")
    }
}
