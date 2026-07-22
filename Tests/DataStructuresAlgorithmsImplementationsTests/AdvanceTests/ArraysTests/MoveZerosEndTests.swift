//
//  MoveZerosEndTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 22/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class MoveZerosEndTests: XCTestCase {
    
    var systemUnderTest: MoveZerosEnd!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = MoveZerosEnd()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testMoveZeros_EmptyArray() {
        var input: [Int] = []
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [])
    }
    
    func testMoveZeros_SingleElement_Zero() {
        var input: [Int] = [0]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [0])
    }
    
    func testMoveZeros_SingleElement_NonZero() {
        var input: [Int] = [5]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [5])
    }
    
    func testMoveZeros_AllZeros() {
        var input: [Int] = [0, 0, 0]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [0, 0, 0])
    }
    
    func testMoveZeros_NoZeros() {
        var input: [Int] = [1, 2, 3]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [1, 2, 3])
    }
    
    // MARK: - Variations & Interspersed Patterns
    
    func testMoveZeros_ZerosAlreadyAtEnd() {
        var input: [Int] = [1, 2, 0, 0]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [1, 2, 0, 0])
    }
    
    func testMoveZeros_ZerosAtStart() {
        var input: [Int] = [0, 0, 1, 2]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [1, 2, 0, 0])
    }
    
    func testMoveZeros_ExampleCase() {
        var input: [Int] = [0, 1, 4, 0, 5, 2]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [1, 4, 5, 2, 0, 0])
    }
    
    func testMoveZeros_InterspersedZeros() {
        var input: [Int] = [0, 1, 0, 3, 12]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [1, 3, 12, 0, 0])
    }
    
    func testMoveZeros_NegativeNumbers() {
        var input: [Int] = [-1, 0, -2, 0, 3]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [-1, -2, 3, 0, 0])
    }
    
    func testMoveZeros_Duplicates() {
        var input: [Int] = [2, 2, 0, 3, 3, 0]
        systemUnderTest.moveZeros(array: &input)
        XCTAssertEqual(input, [2, 2, 3, 3, 0, 0])
    }
}
