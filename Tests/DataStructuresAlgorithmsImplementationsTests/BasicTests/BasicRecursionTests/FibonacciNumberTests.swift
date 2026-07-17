//
//  FibonacciNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 2026-07-13.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class FibonacciNumberTests: XCTestCase {
    
    var systemUnderTest: FibonacciNumber!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = FibonacciNumber()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Base Cases
    
    func testFibonacci_Zero() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 0), 0)
    }
    
    func testFibonacci_One() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 1), 1)
    }
    
    // MARK: - Standard Inputs
    
    func testFibonacci_Two() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 2), 1)
    }
    
    func testFibonacci_Three() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 3), 2)
    }
    
    func testFibonacci_Four() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 4), 3)
    }
    
    func testFibonacci_Five() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 5), 5)
    }
    
    func testFibonacci_Ten() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 10), 55)
    }
    
    func testFibonacci_Fifteen() {
        XCTAssertEqual(systemUnderTest.fibonacciNumber(n: 15), 610)
    }
}
