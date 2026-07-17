//
//  CheckPrimeRecursionTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 2026-06-29.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class CheckPrimeRecursionTests: XCTestCase {
    
    var systemUnderTest: CheckPrimeRecursion!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = CheckPrimeRecursion()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Edge Cases
    
    func testIsPrime_One() {
        XCTAssertFalse(systemUnderTest.isPrime(num: 1), "1 is not a prime number")
    }
    
    func testIsPrime_Two() {
        XCTAssertTrue(systemUnderTest.isPrime(num: 2), "2 is a prime number")
    }
    
    func testIsPrime_Three() {
        XCTAssertTrue(systemUnderTest.isPrime(num: 3), "3 is a prime number")
    }
    
    // MARK: - Composite Numbers (Non-Primes)
    
    func testIsPrime_Four() {
        XCTAssertFalse(systemUnderTest.isPrime(num: 4), "4 is not a prime number")
    }
    
    func testIsPrime_Nine() {
        XCTAssertFalse(systemUnderTest.isPrime(num: 9), "9 is not a prime number")
    }
    
    func testIsPrime_OtherComposites() {
        XCTAssertFalse(systemUnderTest.isPrime(num: 6), "6 is not a prime number")
        XCTAssertFalse(systemUnderTest.isPrime(num: 8), "8 is not a prime number")
        XCTAssertFalse(systemUnderTest.isPrime(num: 15), "15 is not a prime number")
        XCTAssertFalse(systemUnderTest.isPrime(num: 25), "25 is not a prime number")
    }
    
    // MARK: - Prime Numbers
    
    func testIsPrime_Primes() {
        XCTAssertTrue(systemUnderTest.isPrime(num: 5), "5 is a prime number")
        XCTAssertTrue(systemUnderTest.isPrime(num: 7), "7 is a prime number")
        XCTAssertTrue(systemUnderTest.isPrime(num: 11), "11 is a prime number")
        XCTAssertTrue(systemUnderTest.isPrime(num: 13), "13 is a prime number")
        XCTAssertTrue(systemUnderTest.isPrime(num: 17), "17 is a prime number")
        XCTAssertTrue(systemUnderTest.isPrime(num: 19), "19 is a prime number")
    }
    
    // MARK: - Negative and Zero Cases (Edge Cases)
    // Note: We expect these might crash or fail due to square root of negative numbers,
    // but we write them to verify behavior.
    func testIsPrime_Zero() {
        XCTAssertFalse(systemUnderTest.isPrime(num: 0), "0 is not a prime number")
    }
    
    func testIsPrime_Negative() {
        XCTAssertFalse(systemUnderTest.isPrime(num: -5), "-5 is not a prime number")
    }
}
