//
//  DivisorsTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class DivisorsTests: XCTestCase {
    
    var systemUnderTest: Divisors!
    
    override func setUp() {
        systemUnderTest = Divisors()
    }
    
    // MARK: - Boundary Conditions
    
    func testDivisors_Zero() {
        let output = systemUnderTest.listDivisors(number: 0)
        XCTAssertEqual(output, [])
    }
    
    func testDivisors_One() {
        let output = systemUnderTest.listDivisors(number: 1)
        XCTAssertEqual(output, [1])
    }
    
    // MARK: - Negative Conditions
    
    func testDivisors_NegativeNumber() {
        let output = systemUnderTest.listDivisors(number: -5)
        XCTAssertEqual(output, [])
    }
    
    // MARK: - Positive Conditions
    
    func testDivisors_Example1() {
        let output = systemUnderTest.listDivisors(number: 6)
        XCTAssertEqual(output, [1, 2, 3, 6])
    }
    
    func testDivisors_Example2() {
        let output = systemUnderTest.listDivisors(number: 8)
        XCTAssertEqual(output, [1, 2, 4, 8])
    }
    
    func testDivisors_PrimeNumber() {
        let output = systemUnderTest.listDivisors(number: 7)
        XCTAssertEqual(output, [1, 7]) // Primes only have 1 and themselves
    }
    
    func testDivisors_PerfectSquare() {
        let output = systemUnderTest.listDivisors(number: 36)
        XCTAssertEqual(output, [1, 2, 3, 4, 6, 9, 12, 18, 36]) // Ensures '6' isn't duplicated
    }
}
