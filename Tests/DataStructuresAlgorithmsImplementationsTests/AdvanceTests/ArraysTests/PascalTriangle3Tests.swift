//
//  PascalTriangle3Tests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 27/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class PascalTriangle3Tests: XCTestCase {
    
    var systemUnderTest: PascalTriangle3!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = PascalTriangle3()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testGeneratePascalTriangle_DocExample() {
        let result = systemUnderTest.generatePascalTriangle(rows: 4)
        XCTAssertEqual(result, [
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1]
        ])
    }
    
    func testGeneratePascalTriangle_1Row() {
        let result = systemUnderTest.generatePascalTriangle(rows: 1)
        XCTAssertEqual(result, [
            [1]
        ])
    }
    
    func testGeneratePascalTriangle_5Rows() {
        let result = systemUnderTest.generatePascalTriangle(rows: 5)
        XCTAssertEqual(result, [
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1]
        ])
    }
    
    func testGeneratePascalTriangle_6Rows() {
        let result = systemUnderTest.generatePascalTriangle(rows: 6)
        XCTAssertEqual(result, [
            [1],
            [1, 1],
            [1, 2, 1],
            [1, 3, 3, 1],
            [1, 4, 6, 4, 1],
            [1, 5, 10, 10, 5, 1]
        ])
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testGeneratePascalTriangle_ZeroRows() {
        let result = systemUnderTest.generatePascalTriangle(rows: 0)
        XCTAssertEqual(result, [])
    }
    
    func testGeneratePascalTriangle_NegativeRows() {
        let result = systemUnderTest.generatePascalTriangle(rows: -5)
        XCTAssertEqual(result, [])
    }
    
    // MARK: - Variations
    
    func testGeneratePascalTriangle_SymmetryCheck() {
        // Every row in the Pascal triangle should be symmetrical
        let result = systemUnderTest.generatePascalTriangle(rows: 7)
        for row in result {
            XCTAssertEqual(row, row.reversed())
        }
    }
    
    func testGeneratePascalTriangle_SumOfRowsCheck() {
        // The sum of elements in the N-th row (0-indexed) should be 2^N.
        let result = systemUnderTest.generatePascalTriangle(rows: 10)
        for (index, row) in result.enumerated() {
            let sum = row.reduce(0, +)
            let expectedSum = Int(pow(2.0, Double(index)))
            XCTAssertEqual(sum, expectedSum)
        }
    }
}
