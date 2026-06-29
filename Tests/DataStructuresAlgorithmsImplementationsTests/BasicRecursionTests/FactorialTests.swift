//
//  FactorialTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 01/06/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class FactorialTests: XCTestCase {
    
    var systemUnderTest: Factorial!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = Factorial()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Constraints
    
    func testCalculateFactorial_Zero() {
        // Base constraint: 0! = 1
        let output = systemUnderTest.calculateFactorial(n: 0)
        XCTAssertEqual(output, 1)
    }
    
    func testCalculateFactorial_MaxConstraint() {
        // Max constraint: 15! = 1_307_674_368_000
        // This requires 64-bit integer precision.
        let output = systemUnderTest.calculateFactorial(n: 15)
        XCTAssertEqual(output, 1_307_674_368_000)
    }
    
    // MARK: - Examples
    
    func testCalculateFactorial_Example1() {
        // n = 3 -> 6
        let output = systemUnderTest.calculateFactorial(n: 3)
        XCTAssertEqual(output, 6)
    }
    
    func testCalculateFactorial_Example2() {
        // n = 5 -> 120
        let output = systemUnderTest.calculateFactorial(n: 5)
        XCTAssertEqual(output, 120)
    }
    
    func testCalculateFactorial_Four() {
        // n = 4 -> 24
        let output = systemUnderTest.calculateFactorial(n: 4)
        XCTAssertEqual(output, 24)
    }
}
