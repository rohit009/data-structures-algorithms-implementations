//
//  RotateStringTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 31/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class RotateStringTests: XCTestCase {
    
    var systemUnderTest: RotateString!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = RotateString()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func testIsRotatedString_EmptyStrings() {
        XCTAssertTrue(systemUnderTest.isRotatedString(string: "", goal: ""))
    }
    
    func testIsRotatedString_DifferentLengths() {
        XCTAssertFalse(systemUnderTest.isRotatedString(string: "abcde", goal: "ab"))
    }
    
    func testIsRotatedString_ValidRotation() {
        XCTAssertTrue(systemUnderTest.isRotatedString(string: "abcde", goal: "cdeab"))
    }
    
    func testIsRotatedString_InvalidRotation() {
        XCTAssertFalse(systemUnderTest.isRotatedString(string: "abcde", goal: "abced"))
    }
    
    func testIsRotatedString_SameString() {
        XCTAssertTrue(systemUnderTest.isRotatedString(string: "abcde", goal: "abcde"))
    }
    
    func testIsRotatedString_AllSameCharacters() {
        XCTAssertTrue(systemUnderTest.isRotatedString(string: "aaaa", goal: "aaaa"))
    }
    
    func testIsRotatedString_SingleCharacterValid() {
        XCTAssertTrue(systemUnderTest.isRotatedString(string: "a", goal: "a"))
    }
    
    func testIsRotatedString_SingleCharacterInvalid() {
        XCTAssertFalse(systemUnderTest.isRotatedString(string: "a", goal: "b"))
    }
}
