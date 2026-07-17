//
//  PalindromeRecursionTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 2026-06-29.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class PalindromeRecursionTests: XCTestCase {
    
    var systemUnderTest: PalindromeRecursion!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = PalindromeRecursion()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Edge Cases
    
    func testIsPalindrome_EmptyString() {
        XCTAssertTrue(systemUnderTest.isPalindrome(""))
    }
    
    func testIsPalindrome_SingleCharacter() {
        XCTAssertTrue(systemUnderTest.isPalindrome("a"))
        XCTAssertTrue(systemUnderTest.isPalindrome("Z"))
        XCTAssertTrue(systemUnderTest.isPalindrome(" "))
    }
    
    // MARK: - Basic Palindromes (Case-Sensitive)
    
    func testIsPalindrome_OddLengthPalindrome() {
        XCTAssertTrue(systemUnderTest.isPalindrome("racecar"))
        XCTAssertTrue(systemUnderTest.isPalindrome("madam"))
    }
    
    func testIsPalindrome_EvenLengthPalindrome() {
        XCTAssertTrue(systemUnderTest.isPalindrome("noon"))
        XCTAssertTrue(systemUnderTest.isPalindrome("abba"))
    }
    
    // MARK: - Non-Palindromes
    
    func testIsPalindrome_NonPalindrome() {
        XCTAssertFalse(systemUnderTest.isPalindrome("hello"))
        XCTAssertFalse(systemUnderTest.isPalindrome("abcda"))
        XCTAssertFalse(systemUnderTest.isPalindrome("apple"))
    }
    
    // MARK: - Variations & Case Sensitivity
    
    func testIsPalindrome_CaseSensitivity() {
        // Since the current implementation does a direct comparison 'chars[startIndex] == chars[endIndex]',
        // "Racecar" (with capital 'R' and lowercase 'r') should return false.
        XCTAssertFalse(systemUnderTest.isPalindrome("Racecar"))
        XCTAssertFalse(systemUnderTest.isPalindrome("Abba"))
    }
    
    func testIsPalindrome_WithSpaces() {
        XCTAssertTrue(systemUnderTest.isPalindrome("taco ocat")) // "taco ocat" is symmetric
        XCTAssertFalse(systemUnderTest.isPalindrome("taco cat"))  // Spaces at different spots, not symmetric directly
    }
    
    func testIsPalindrome_SpecialCharactersAndNumbers() {
        XCTAssertTrue(systemUnderTest.isPalindrome("12321"))
        XCTAssertFalse(systemUnderTest.isPalindrome("123421"))
        XCTAssertTrue(systemUnderTest.isPalindrome("!@#@!"))
        XCTAssertFalse(systemUnderTest.isPalindrome("!@#$!"))
    }
}
