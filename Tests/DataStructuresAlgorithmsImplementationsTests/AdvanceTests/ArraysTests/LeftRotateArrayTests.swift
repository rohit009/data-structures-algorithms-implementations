//
//  LeftRotateArrayTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 20/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class LeftRotateArrayTests: XCTestCase {
    
    var systemUnderTest: LeftRotateArray!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LeftRotateArray()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testRotateLeft_EmptyArray() {
        var input: [Int] = []
        systemUnderTest.rotateLeft(array: &input, byPlaces: 2)
        XCTAssertEqual(input, [])
    }
    
    func testRotateLeft_SingleElement() {
        var input: [Int] = [5]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 3)
        XCTAssertEqual(input, [5])
    }
    
    func testRotateLeft_ZeroPlaces() {
        var input: [Int] = [1, 2, 3, 4, 5]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 0)
        XCTAssertEqual(input, [1, 2, 3, 4, 5])
    }
    
    func testRotateLeft_KEqualToArrayLength() {
        var input: [Int] = [1, 2, 3, 4, 5]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 5)
        XCTAssertEqual(input, [1, 2, 3, 4, 5])
    }
    
    func testRotateLeft_KMultipleOfArrayLength() {
        var input: [Int] = [1, 2, 3, 4, 5]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 10)
        XCTAssertEqual(input, [1, 2, 3, 4, 5])
    }
    
    // MARK: - Variations
    
    func testRotateLeft_ByOnePlace() {
        var input: [Int] = [1, 2, 3, 4, 5]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 1)
        XCTAssertEqual(input, [2, 3, 4, 5, 1])
    }
    
    func testRotateLeft_ByTwoPlaces() {
        var input: [Int] = [1, 2, 3, 4, 5]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 2)
        XCTAssertEqual(input, [3, 4, 5, 1, 2])
    }
    
    func testRotateLeft_KGreaterThanArrayLength() {
        var input: [Int] = [1, 2, 3, 4, 5]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 7)
        XCTAssertEqual(input, [3, 4, 5, 1, 2])
    }
    
    func testRotateLeft_TwoElements() {
        var input: [Int] = [10, 20]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 1)
        XCTAssertEqual(input, [20, 10])
    }
    
    func testRotateLeft_NegativeNumbersAndDuplicates() {
        var input: [Int] = [-1, -2, 3, 3, -1]
        systemUnderTest.rotateLeft(array: &input, byPlaces: 3)
        XCTAssertEqual(input, [3, -1, -1, -2, 3])
    }
}
