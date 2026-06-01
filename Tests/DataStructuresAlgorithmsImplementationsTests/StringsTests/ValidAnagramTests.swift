//
//  ValidAnagramTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 31/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class ValidAnagramTests: XCTestCase {
    
    var systemUnderTest: ValidAnagram!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = ValidAnagram()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func testIsValidAnagram_EmptyStrings() {
        XCTAssertTrue(systemUnderTest.isValidAnagram(string1: "", string2: ""))
    }
    
    func testIsValidAnagram_DifferentLengths() {
        XCTAssertFalse(systemUnderTest.isValidAnagram(string1: "abc", string2: "ab"))
    }
    
    func testIsValidAnagram_ValidAnagram() {
        XCTAssertTrue(systemUnderTest.isValidAnagram(string1: "anagram", string2: "nagaram"))
    }
    
    func testIsValidAnagram_InvalidAnagram() {
        XCTAssertFalse(systemUnderTest.isValidAnagram(string1: "rat", string2: "car"))
    }
    
    func testIsValidAnagram_NonASCIICharacters() {
        // Since the implementation returns false if characters are not ASCII
        XCTAssertFalse(systemUnderTest.isValidAnagram(string1: "café", string2: "café"))
    }
}
