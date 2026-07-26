//
//  PascalTriangle1Tests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 26/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class PascalTriangle1Tests: XCTestCase {
    
    var systemUnderTest: PascalTriangle1!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = PascalTriangle1()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testFindElement_DocExample() {
        // Row 4, Column 2 -> Output: 3
        let result = systemUnderTest.findElement(row: 4, column: 2)
        XCTAssertEqual(result, 3)
    }
    
    func testFindElement_Row5Col3() {
        // Row 5: 1 4 6 4 1 -> Col 3 is 6
        let result = systemUnderTest.findElement(row: 5, column: 3)
        XCTAssertEqual(result, 6)
    }
    
    func testFindElement_Row6Col3() {
        // Row 6: 1 5 10 10 5 1 -> Col 3 is 10
        let result = systemUnderTest.findElement(row: 6, column: 3)
        XCTAssertEqual(result, 10)
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindElement_FirstRowFirstColumn() {
        // Row 1, Column 1 -> 1
        let result = systemUnderTest.findElement(row: 1, column: 1)
        XCTAssertEqual(result, 1)
    }
    
    func testFindElement_FirstColumnAnyRow() {
        // First element of any row is always 1
        let result = systemUnderTest.findElement(row: 5, column: 1)
        XCTAssertEqual(result, 1)
    }
    
    func testFindElement_LastColumnAnyRow() {
        // Last element of any row (where row == column) is always 1
        let result = systemUnderTest.findElement(row: 4, column: 4)
        XCTAssertEqual(result, 1)
    }
    
    func testFindElement_SecondColumn() {
        // Second element of row N is always N - 1
        let result = systemUnderTest.findElement(row: 6, column: 2)
        XCTAssertEqual(result, 5)
    }
    
    // MARK: - Variations
    
    func testFindElement_Symmetry() {
        // Pascal's triangle is symmetric: (r, c) == (r, r - c + 1)
        let leftSide = systemUnderTest.findElement(row: 7, column: 3)  // 15
        let rightSide = systemUnderTest.findElement(row: 7, column: 5) // 15
        XCTAssertEqual(leftSide, 15)
        XCTAssertEqual(rightSide, 15)
        XCTAssertEqual(leftSide, rightSide)
    }
    
    func testFindElement_LargerRow() {
        // Row 8: 1 7 21 35 35 21 7 1 -> Col 4 is 35
        let result = systemUnderTest.findElement(row: 8, column: 4)
        XCTAssertEqual(result, 35)
    }
}
