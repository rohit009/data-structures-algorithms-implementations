//
//  RemoveDuplicatesFromSortedArrayTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 22/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class RemoveDuplicatesFromSortedArrayTests: XCTestCase {
    
    var systemUnderTest: RemoveDuplicatesFromSortedArray!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = RemoveDuplicatesFromSortedArray()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testRemoveDuplicates_EmptyArray() {
        var input: [Int] = []
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 0)
        XCTAssertEqual(Array(input.prefix(k)), [])
    }
    
    func testRemoveDuplicates_SingleElement() {
        var input: [Int] = [1]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 1)
        XCTAssertEqual(Array(input.prefix(k)), [1])
    }
    
    func testRemoveDuplicates_TwoElements_Distinct() {
        var input: [Int] = [1, 2]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 2)
        XCTAssertEqual(Array(input.prefix(k)), [1, 2])
    }
    
    func testRemoveDuplicates_TwoElements_Duplicate() {
        var input: [Int] = [1, 1]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 1)
        XCTAssertEqual(Array(input.prefix(k)), [1])
    }
    
    func testRemoveDuplicates_AllElementsIdentical() {
        var input: [Int] = [2, 2, 2, 2, 2]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 1)
        XCTAssertEqual(Array(input.prefix(k)), [2])
    }
    
    func testRemoveDuplicates_NoDuplicates() {
        var input: [Int] = [1, 2, 3, 4, 5]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 5)
        XCTAssertEqual(Array(input.prefix(k)), [1, 2, 3, 4, 5])
    }
    
    // MARK: - Variations
    
    func testRemoveDuplicates_ExampleCase() {
        var input: [Int] = [0, 0, 3, 3, 5, 6]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 4)
        XCTAssertEqual(Array(input.prefix(k)), [0, 3, 5, 6])
    }
    
    func testRemoveDuplicates_DuplicatesAtStart() {
        var input: [Int] = [1, 1, 1, 2, 3]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 3)
        XCTAssertEqual(Array(input.prefix(k)), [1, 2, 3])
    }
    
    func testRemoveDuplicates_DuplicatesAtEnd() {
        var input: [Int] = [1, 2, 3, 3, 3]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 3)
        XCTAssertEqual(Array(input.prefix(k)), [1, 2, 3])
    }
    
    func testRemoveDuplicates_NegativeNumbersAndZeros() {
        var input: [Int] = [-3, -3, -1, 0, 0, 2]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 4)
        XCTAssertEqual(Array(input.prefix(k)), [-3, -1, 0, 2])
    }
    
    func testRemoveDuplicates_MultipleConsecutiveDuplicates() {
        var input: [Int] = [1, 1, 2, 2, 3, 3, 4, 4]
        let k = systemUnderTest.removeDuplicates(array: &input)
        XCTAssertEqual(k, 4)
        XCTAssertEqual(Array(input.prefix(k)), [1, 2, 3, 4])
    }
}
