//
//  PrintMatrixInSpiralMannerTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 26/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class PrintMatrixInSpiralMannerTests: XCTestCase {
    
    var systemUnderTest: PrintMatrixInSpiralManner!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = PrintMatrixInSpiralManner()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testPrintSpiral_DocExample() {
        let matrix = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9]
        ]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [1, 2, 3, 6, 9, 8, 7, 4, 5])
    }
    
    func testPrintSpiral_4x4Matrix() {
        let matrix = [
            [1, 2, 3, 4],
            [5, 6, 7, 8],
            [9, 10, 11, 12],
            [13, 14, 15, 16]
        ]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10])
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testPrintSpiral_EmptyMatrix() {
        let matrix: [[Int]] = []
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [])
    }
    
    func testPrintSpiral_EmptySubArray() {
        let matrix: [[Int]] = [[]]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [])
    }
    
    func testPrintSpiral_SingleElementMatrix() {
        let matrix = [[42]]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [42])
    }
    
    func testPrintSpiral_SingleRowMatrix() {
        let matrix = [[1, 2, 3, 4]]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [1, 2, 3, 4])
    }
    
    func testPrintSpiral_SingleColumnMatrix() {
        let matrix = [[1], [2], [3], [4]]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [1, 2, 3, 4])
    }
    
    // MARK: - Variations
    
    func testPrintSpiral_RectangularMatrix2x3() {
        let matrix = [
            [1, 2, 3],
            [4, 5, 6]
        ]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [1, 2, 3, 6, 5, 4])
    }
    
    func testPrintSpiral_RectangularMatrix3x2() {
        let matrix = [
            [1, 2],
            [3, 4],
            [5, 6]
        ]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [1, 2, 4, 6, 5, 3])
    }
    
    func testPrintSpiral_NegativeNumbers() {
        let matrix = [
            [-1, -2],
            [-3, -4]
        ]
        let result = systemUnderTest.print(matrix: matrix)
        XCTAssertEqual(result, [-1, -2, -4, -3])
    }
}
