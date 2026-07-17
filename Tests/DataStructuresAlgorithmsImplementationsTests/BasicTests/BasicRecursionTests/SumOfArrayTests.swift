//
//  SumOfArrayTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 29/06/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class SumOfArrayTests: XCTestCase {
    
    var systemUnderTest: SumOfArray!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = SumOfArray()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Edge Cases
    
    func testCalculate_EmptyArray() {
        // An empty array should sum to 0
        let output = systemUnderTest.calculate(numbers: [])
        XCTAssertEqual(output, 0)
    }
    
    func testCalculate_SingleElementPositive() {
        let output = systemUnderTest.calculate(numbers: [5])
        XCTAssertEqual(output, 5)
    }
    
    func testCalculate_SingleElementNegative() {
        let output = systemUnderTest.calculate(numbers: [-3])
        XCTAssertEqual(output, -3)
    }
    
    func testCalculate_SingleElementZero() {
        let output = systemUnderTest.calculate(numbers: [0])
        XCTAssertEqual(output, 0)
    }
    
    // MARK: - Basic Cases
    
    func testCalculate_MultiplePositiveElements() {
        let output = systemUnderTest.calculate(numbers: [1, 2, 3, 4, 5])
        XCTAssertEqual(output, 15)
    }
    
    func testCalculate_MultipleNegativeElements() {
        let output = systemUnderTest.calculate(numbers: [-1, -2, -3, -4, -5])
        XCTAssertEqual(output, -15)
    }
    
    func testCalculate_MixedElements() {
        let output = systemUnderTest.calculate(numbers: [10, -5, 20, -15, 5])
        XCTAssertEqual(output, 15)
    }
    
    func testCalculate_AllZeros() {
        let output = systemUnderTest.calculate(numbers: [0, 0, 0, 0])
        XCTAssertEqual(output, 0)
    }
    
    // MARK: - Variations & Performance Considerations
    
    func testCalculate_DuplicateValues() {
        let output = systemUnderTest.calculate(numbers: [7, 7, 7])
        XCTAssertEqual(output, 21)
    }
    
    func testCalculate_LargeValues() {
        let output = systemUnderTest.calculate(numbers: [1_000_000, 2_000_000, -500_000])
        XCTAssertEqual(output, 2_500_000)
    }
}
