//
//  PrimeNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class PrimeNumberTests: XCTestCase {
    
    var systemUnderTest: PrimeNumber!
    
    override func setUp() {
        systemUnderTest = PrimeNumber()
    }
    
    // MARK: - Boundary Conditions
    
    func testPrimeNumber_Zero() {
        let output = systemUnderTest.isPrime(number: 0)
        XCTAssertFalse(output)
    }
    
    func testPrimeNumber_One() {
        let output = systemUnderTest.isPrime(number: 1)
        XCTAssertFalse(output)
    }
    
    func testPrimeNumber_Two() {
        let output = systemUnderTest.isPrime(number: 2)
        XCTAssertTrue(output)
    }
    
    func testPrimeNumber_Three() {
        let output = systemUnderTest.isPrime(number: 3)
        XCTAssertTrue(output)
    }
    
    // MARK: - Negative Conditions
    
    func testPrimeNumber_NegativeOne() {
        let output = systemUnderTest.isPrime(number: -1)
        XCTAssertFalse(output)
    }
    
    func testPrimeNumber_NegativeNumber() {
        let output = systemUnderTest.isPrime(number: -17)
        XCTAssertFalse(output)
    }
    
    // MARK: - Positive Conditions (Primes)
    
    func testPrimeNumber_SmallPrime() {
        let output = systemUnderTest.isPrime(number: 5)
        XCTAssertTrue(output)
    }
    
    func testPrimeNumber_MediumPrime() {
        let output = systemUnderTest.isPrime(number: 13)
        XCTAssertTrue(output)
    }
    
    func testPrimeNumber_LargePrime() {
        let output = systemUnderTest.isPrime(number: 97)
        XCTAssertTrue(output)
    }
    
    // MARK: - Positive Conditions (Non-Primes)
    
    func testPrimeNumber_EvenNonPrime() {
        let output = systemUnderTest.isPrime(number: 4)
        XCTAssertFalse(output)
    }
    
    func testPrimeNumber_OddNonPrime() {
        let output = systemUnderTest.isPrime(number: 9)
        XCTAssertFalse(output)
    }
    
    func testPrimeNumber_LargeNonPrime() {
        let output = systemUnderTest.isPrime(number: 100)
        XCTAssertFalse(output)
    }
}
