//
//  CountOfPrimeNumbersTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class CountOfPrimeNumbersTests: XCTestCase {
    
    var systemUnderTest: CountOfPrimeNumbers!
    
    override func setUp() {
        systemUnderTest = CountOfPrimeNumbers()
    }
    
    // MARK: - Boundary Conditions
    
    func testCountOfPrimeNumbers_Zero() {
        let output = systemUnderTest.findCountOfPrimeNumbers(upto: 0)
        XCTAssertEqual(output, 0)
    }
    
    func testCountOfPrimeNumbers_One() {
        let output = systemUnderTest.findCountOfPrimeNumbers(upto: 1)
        XCTAssertEqual(output, 0)
    }
    
    func testCountOfPrimeNumbers_Two() {
        let output = systemUnderTest.findCountOfPrimeNumbers(upto: 2)
        XCTAssertEqual(output, 1) // Only 2 is prime
    }
    
    // MARK: - Negative Conditions
    
    func testCountOfPrimeNumbers_Negative() {
        let output = systemUnderTest.findCountOfPrimeNumbers(upto: -5)
        XCTAssertEqual(output, 0)
    }
    
    // MARK: - Positive Conditions (Examples)
    
    func testCountOfPrimeNumbers_Example1() {
        let output = systemUnderTest.findCountOfPrimeNumbers(upto: 6)
        XCTAssertEqual(output, 3) // Primes: 2, 3, 5
    }
    
    func testCountOfPrimeNumbers_Example2() {
        let output = systemUnderTest.findCountOfPrimeNumbers(upto: 10)
        XCTAssertEqual(output, 4) // Primes: 2, 3, 5, 7
    }
    
    func testCountOfPrimeNumbers_LargeNumber() {
        let output = systemUnderTest.findCountOfPrimeNumbers(upto: 20)
        XCTAssertEqual(output, 8) // Primes: 2, 3, 5, 7, 11, 13, 17, 19
    }
}
