//
//  PascalTriangle2Tests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 27/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class PascalTriangle2Tests: XCTestCase {
    
    var systemUnderTest: PascalTriangle2!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = PascalTriangle2()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testGenerateRow_DocExample() {
        let result = systemUnderTest.generateRow(4)
        XCTAssertEqual(result, [1, 3, 3, 1])
    }
    
    func testGenerateRow_Row1() {
        let result = systemUnderTest.generateRow(1)
        XCTAssertEqual(result, [1])
    }
    
    func testGenerateRow_Row2() {
        let result = systemUnderTest.generateRow(2)
        XCTAssertEqual(result, [1, 1])
    }
    
    func testGenerateRow_Row3() {
        let result = systemUnderTest.generateRow(3)
        XCTAssertEqual(result, [1, 2, 1])
    }
    
    func testGenerateRow_Row5() {
        let result = systemUnderTest.generateRow(5)
        XCTAssertEqual(result, [1, 4, 6, 4, 1])
    }
    
    func testGenerateRow_Row6() {
        let result = systemUnderTest.generateRow(6)
        XCTAssertEqual(result, [1, 5, 10, 10, 5, 1])
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testGenerateRow_Zero() {
        let result = systemUnderTest.generateRow(0)
        XCTAssertEqual(result, [])
    }
    
    func testGenerateRow_Negative() {
        let result = systemUnderTest.generateRow(-1)
        XCTAssertEqual(result, [])
    }
    
    // MARK: - Variations & Mathematical Properties
    
    func testGenerateRow_Symmetry() {
        let row = systemUnderTest.generateRow(7)
        XCTAssertEqual(row, row.reversed())
    }
    
    func testGenerateRow_SumOfElements() {
        // Sum of elements in N-th row (1-indexed) should be 2^(N-1)
        let row5 = systemUnderTest.generateRow(5)
        let sum = row5.reduce(0, +)
        XCTAssertEqual(sum, 16) // 2^4 = 16
    }
}
