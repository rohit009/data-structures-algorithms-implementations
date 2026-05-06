//
//  ReverseNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class PalindromeNumberTests: XCTestCase {
    
    var systemUnderTest: PalindromeNumber!
    
    override func setUp() {
        systemUnderTest = PalindromeNumber()
    }
    
    func testPalindromeNumber_Input1() {
        let output = systemUnderTest.isPalindrome(number: 4)

        XCTAssertTrue(output)
    }
    
    func testPalindromeNumber_Input2() {
        let output = systemUnderTest.isPalindrome(number: 0)
        
        XCTAssertTrue(output)
    }
    
    func testPalindromeNumber_Input3() {
        let output = systemUnderTest.isPalindrome(number: 72)
        
        XCTAssertFalse(output)
    }

    func testPalindromeNumber_Input4() {
        let output = systemUnderTest.isPalindrome(number: 345)
        
        XCTAssertFalse(output)
    }
    
    func testPalindromeNumber_Input5() {
        let output = systemUnderTest.isPalindrome(number: 9889)
        
        XCTAssertTrue(output)
    }
    
    func testPalindromeNumber_Input6() {
        let output = systemUnderTest.isPalindrome(number: -500)
        
        XCTAssertFalse(output)
    }
    
    func testPalindromeNumber_Input7() {
        let output = systemUnderTest.isPalindrome(number: -721)
        
        XCTAssertFalse(output)
    }
}
