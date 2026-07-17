//
//  LCMTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class LCMTests: XCTestCase {
    
    var systemUnderTest: LCM!
    
    override func setUp() {
        systemUnderTest = LCM()
    }
    
    // MARK: - Boundary Conditions
    
    func testLCM_BothZero() {
        let output = systemUnderTest.findLCM(number1: 0, number2: 0)
        XCTAssertEqual(output, 0)
    }
    
    func testLCM_OneZero() {
        let output1 = systemUnderTest.findLCM(number1: 0, number2: 5)
        let output2 = systemUnderTest.findLCM(number1: 10, number2: 0)
        
        XCTAssertEqual(output1, 0)
        XCTAssertEqual(output2, 0)
    }
    
    func testLCM_SameNumbers() {
        let output = systemUnderTest.findLCM(number1: 5, number2: 5)
        XCTAssertEqual(output, 5)
    }
    
    // MARK: - Negative Conditions
    
    func testLCM_NegativeNumbers() {
        let output1 = systemUnderTest.findLCM(number1: -10, number2: 5)
        let output2 = systemUnderTest.findLCM(number1: 10, number2: -5)
        let output3 = systemUnderTest.findLCM(number1: -10, number2: -5)
        
        XCTAssertEqual(output1, 0)
        XCTAssertEqual(output2, 0)
        XCTAssertEqual(output3, 0)
    }
    
    // MARK: - Positive Conditions
    
    func testLCM_CoPrimes() {
        let output = systemUnderTest.findLCM(number1: 7, number2: 13)
        XCTAssertEqual(output, 91) // 7 * 13
    }
    
    func testLCM_OneIsMultipleOfOther() {
        let output1 = systemUnderTest.findLCM(number1: 10, number2: 20)
        let output2 = systemUnderTest.findLCM(number1: 20, number2: 10)
        
        XCTAssertEqual(output1, 20)
        XCTAssertEqual(output2, 20)
    }
    
    func testLCM_StandardExample() {
        let output1 = systemUnderTest.findLCM(number1: 4, number2: 6)
        let output2 = systemUnderTest.findLCM(number1: 6, number2: 4)
        
        XCTAssertEqual(output1, 12)
        XCTAssertEqual(output2, 12)
    }
    
    func testLCM_LargerNumbers() {
        let output = systemUnderTest.findLCM(number1: 12, number2: 15)
        XCTAssertEqual(output, 60)
    }
}
