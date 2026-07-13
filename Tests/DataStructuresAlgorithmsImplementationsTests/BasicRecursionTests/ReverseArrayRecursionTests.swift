//
//  ReverseArrayRecursionTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 2026-06-30.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class ReverseArrayRecursionTests: XCTestCase {
    
    var systemUnderTest: ReverseArrayRecursion!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = ReverseArrayRecursion()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Edge Cases
    
    func testReverseArray_Empty() {
        let input: [Int] = []
        let expected: [Int] = []
        XCTAssertEqual(systemUnderTest.reverseArray(input), expected, "Reversing an empty array should return an empty array")
    }
    
    func testReverseArray_SingleElement() {
        let input = [42]
        let expected = [42]
        XCTAssertEqual(systemUnderTest.reverseArray(input), expected, "Reversing a single element array should return the same array")
    }
    
    // MARK: - Normal Cases
    
    func testReverseArray_TwoElements() {
        let input = [1, 2]
        let expected = [2, 1]
        XCTAssertEqual(systemUnderTest.reverseArray(input), expected, "Reversing a two-element array should reverse the elements")
    }
    
    func testReverseArray_OddNumberOfElements() {
        let input = [1, 2, 3, 4, 5]
        let expected = [5, 4, 3, 2, 1]
        XCTAssertEqual(systemUnderTest.reverseArray(input), expected, "Reversing an odd number of elements should reverse the array")
    }
    
    func testReverseArray_EvenNumberOfElements() {
        let input = [1, 2, 3, 4]
        let expected = [4, 3, 2, 1]
        XCTAssertEqual(systemUnderTest.reverseArray(input), expected, "Reversing an even number of elements should reverse the array")
    }
    
    // MARK: - Variety Cases
    
    func testReverseArray_WithDuplicates() {
        let input = [1, 2, 2, 1, 3]
        let expected = [3, 1, 2, 2, 1]
        XCTAssertEqual(systemUnderTest.reverseArray(input), expected, "Reversing should work correctly when duplicates are present")
    }
    
    func testReverseArray_WithNegatives() {
        let input = [-1, -2, -3, 0, 5]
        let expected = [5, 0, -3, -2, -1]
        XCTAssertEqual(systemUnderTest.reverseArray(input), expected, "Reversing should work correctly with negative numbers and zero")
    }
}
