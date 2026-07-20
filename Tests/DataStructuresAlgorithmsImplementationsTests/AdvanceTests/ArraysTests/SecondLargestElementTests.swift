//
//  SecondLargestElementTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 20/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class SecondLargestElementTests: XCTestCase {
    
    var systemUnderTest: SecondLargestElement!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = SecondLargestElement()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindSecondLargest_EmptyArray() {
        let input: [Int] = []
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, -1)
    }
    
    func testFindSecondLargest_SingleElement() {
        let input: [Int] = [10]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, -1)
    }
    
    func testFindSecondLargest_TwoEqualElements() {
        let input: [Int] = [5, 5]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, -1)
    }
    
    func testFindSecondLargest_AllIdenticalElements() {
        let input: [Int] = [7, 7, 7, 7]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, -1)
    }
    
    func testFindSecondLargest_TwoDistinctElements() {
        let input: [Int] = [10, 5]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, 5)
    }
    
    func testFindSecondLargest_TwoDistinctElementsAscending() {
        let input: [Int] = [5, 10]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, 5)
    }
    
    // MARK: - Standard Cases & Variations
    
    func testFindSecondLargest_DistinctElements() {
        let input: [Int] = [12, 35, 1, 10, 34, 1]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, 34)
    }
    
    func testFindSecondLargest_ArrayWithDuplicatesOfLargest() {
        let input: [Int] = [10, 10, 9, 8, 10]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, 9)
    }
    
    func testFindSecondLargest_SortedAscending() {
        let input: [Int] = [1, 2, 3, 4, 5]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, 4)
    }
    
    func testFindSecondLargest_SortedDescending() {
        let input: [Int] = [5, 4, 3, 2, 1]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, 4)
    }
    
    func testFindSecondLargest_NegativeNumbers() {
        let input: [Int] = [-10, -5, -2, -20]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, -5)
    }
    
    func testFindSecondLargest_MixedPositiveNegativeAndZero() {
        let input: [Int] = [-5, 0, 10, -2, 5]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, 5)
    }
    
    func testFindSecondLargest_AllNegativeIdentical() {
        let input: [Int] = [-3, -3, -3]
        let result = systemUnderTest.findSecondLargestElement(input)
        XCTAssertEqual(result, -1)
    }
}
