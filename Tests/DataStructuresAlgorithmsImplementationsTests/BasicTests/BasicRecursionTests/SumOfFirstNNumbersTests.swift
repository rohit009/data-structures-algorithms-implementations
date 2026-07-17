//
//  SumOfFirstNNumbersTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 01/06/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class SumOfFirstNNumbersTests: XCTestCase {
    
    var systemUnderTest: SumOfFirstNNumbers!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = SumOfFirstNNumbers()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Constraints
    
    func testCalculateSum_BaseCase() {
        // Minimum constraint N = 1
        let output = systemUnderTest.calculateSum(n: 1)
        XCTAssertEqual(output, 1)
    }
    
    func testCalculateSum_MaxConstraint() {
        // Maximum constraint N = 1000
        let output = systemUnderTest.calculateSum(n: 1000)
        XCTAssertEqual(output, 500500)
    }
    
    // MARK: - Examples
    
    func testCalculateSum_Example1() {
        // N = 4 -> 1 + 2 + 3 + 4 = 10
        let output = systemUnderTest.calculateSum(n: 4)
        XCTAssertEqual(output, 10)
    }
    
    func testCalculateSum_Example2() {
        // N = 2 -> 1 + 2 = 3
        let output = systemUnderTest.calculateSum(n: 2)
        XCTAssertEqual(output, 3)
    }
    
    func testCalculateSum_Ten() {
        // N = 10 -> 55
        let output = systemUnderTest.calculateSum(n: 10)
        XCTAssertEqual(output, 55)
    }
}
