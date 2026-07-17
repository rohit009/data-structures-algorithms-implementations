//
//  FactorialCalculatorTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class FactorialCalculatorTests: XCTestCase {
    
    var systemUnderTest: FactorialCalculator!
    
    override func setUp() {
        systemUnderTest = FactorialCalculator()
    }
    
    func testFactorialNumber_Input1() {
        let output = systemUnderTest.calculateFactorial(number: 4)
        
        XCTAssertEqual(output, 24)
    }
    
    func testFactorialNumber_Input2() {
        let output = systemUnderTest.calculateFactorial(number: 0)
        
        XCTAssertEqual(output, 1)
    }
    
    func testFactorialNumber_Input3() {
        let output = systemUnderTest.calculateFactorial(number: 7)
        
        XCTAssertEqual(output, 5040)
    }

    func testFactorialNumber_Input4() {
        let output = systemUnderTest.calculateFactorial(number: 10)
        
        XCTAssertEqual(output, 3628800)
    }
    
    func testFactorialNumber_Input5() {
        let output = systemUnderTest.calculateFactorial(number: -8)
        
        XCTAssertNil(output)
    }
}
