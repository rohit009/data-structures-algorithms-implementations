//
//  GCDTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class GCDTests: XCTestCase {
    
    var systemUnderTest: GCD!
    
    override func setUp() {
        systemUnderTest = GCD()
    }
    
    // MARK: - Boundary Conditions
    
    func testGCD_BothZero() {
        let output = systemUnderTest.findGCD(number1: 0, number2: 0)
        XCTAssertEqual(output, 0)
    }
    
    func testGCD_OneZero() {
        let output1 = systemUnderTest.findGCD(number1: 0, number2: 5)
        let output2 = systemUnderTest.findGCD(number1: 10, number2: 0)
        
        XCTAssertEqual(output1, 0)
        XCTAssertEqual(output2, 0)
    }
    
    func testGCD_SameNumbers() {
        let output = systemUnderTest.findGCD(number1: 5, number2: 5)
        XCTAssertEqual(output, 5)
    }
    
    // MARK: - Negative Conditions
    
    func testGCD_NegativeNumbers() {
        let output1 = systemUnderTest.findGCD(number1: -10, number2: 5)
        let output2 = systemUnderTest.findGCD(number1: 10, number2: -5)
        let output3 = systemUnderTest.findGCD(number1: -10, number2: -5)
        
        XCTAssertEqual(output1, 0)
        XCTAssertEqual(output2, 0)
        XCTAssertEqual(output3, 0)
    }
    
    // MARK: - Positive Conditions
    
    func testGCD_CoPrimes() {
        let output = systemUnderTest.findGCD(number1: 7, number2: 13)
        XCTAssertEqual(output, 1) // No common divisor other than 1
    }
    
    func testGCD_OneIsMultipleOfOther() {
        let output1 = systemUnderTest.findGCD(number1: 10, number2: 20)
        let output2 = systemUnderTest.findGCD(number1: 20, number2: 10)
        
        XCTAssertEqual(output1, 10)
        XCTAssertEqual(output2, 10)
    }
    
    func testGCD_StandardExample() {
        let output1 = systemUnderTest.findGCD(number1: 48, number2: 18)
        let output2 = systemUnderTest.findGCD(number1: 18, number2: 48)
        
        XCTAssertEqual(output1, 6)
        XCTAssertEqual(output2, 6)
    }
    
    func testGCD_LargeNumbers() {
        let output = systemUnderTest.findGCD(number1: 1014, number2: 455)
        XCTAssertEqual(output, 13)
    }
}
