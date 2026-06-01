//
//  PalindromeTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 27/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class PalindromeTests: XCTestCase {
    
    var systemUnderTest: Palindrome!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = Palindrome()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testIsPalindrome_EmptyString() {
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "", caseSensitive: true))
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "", caseSensitive: false))
    }
    
    func testIsPalindrome_SingleCharacter() {
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "a", caseSensitive: true))
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "A", caseSensitive: false))
    }
    
    // MARK: - Case Sensitive Conditions
    
    func testIsPalindrome_CaseSensitive_Positive() {
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "racecar", caseSensitive: true))
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "aba", caseSensitive: true))
    }
    
    func testIsPalindrome_CaseSensitive_Negative() {
        XCTAssertFalse(systemUnderTest.isPalindrome(string: "Racecar", caseSensitive: true))
        XCTAssertFalse(systemUnderTest.isPalindrome(string: "Aba", caseSensitive: true))
    }
    
    // MARK: - Case Insensitive Conditions
    
    func testIsPalindrome_CaseInsensitive_Positive() {
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "Racecar", caseSensitive: false))
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "Aba", caseSensitive: false))
        XCTAssertTrue(systemUnderTest.isPalindrome(string: "racecar", caseSensitive: false))
    }
    
    func testIsPalindrome_CaseInsensitive_Negative() {
        XCTAssertFalse(systemUnderTest.isPalindrome(string: "hello", caseSensitive: false))
        XCTAssertFalse(systemUnderTest.isPalindrome(string: "notapalindrome", caseSensitive: false))
    }
    
    // MARK: - isPalindromeWithStringIndex Tests
    
    func testIsPalindromeWithStringIndex_EmptyString() {
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "", caseSensitive: true))
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "", caseSensitive: false))
    }
    
    func testIsPalindromeWithStringIndex_SingleCharacter() {
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "a", caseSensitive: true))
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "A", caseSensitive: false))
    }
    
    func testIsPalindromeWithStringIndex_CaseSensitive_Positive() {
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "racecar", caseSensitive: true))
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "aba", caseSensitive: true))
    }
    
    func testIsPalindromeWithStringIndex_CaseSensitive_Negative() {
        XCTAssertFalse(systemUnderTest.isPalindromeWithStringIndex(string: "Racecar", caseSensitive: true))
        XCTAssertFalse(systemUnderTest.isPalindromeWithStringIndex(string: "Aba", caseSensitive: true))
    }
    
    func testIsPalindromeWithStringIndex_CaseInsensitive_Positive() {
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "Racecar", caseSensitive: false))
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "Aba", caseSensitive: false))
        XCTAssertTrue(systemUnderTest.isPalindromeWithStringIndex(string: "racecar", caseSensitive: false))
    }
    
    func testIsPalindromeWithStringIndex_CaseInsensitive_Negative() {
        XCTAssertFalse(systemUnderTest.isPalindromeWithStringIndex(string: "hello", caseSensitive: false))
        XCTAssertFalse(systemUnderTest.isPalindromeWithStringIndex(string: "notapalindrome", caseSensitive: false))
    }
}
