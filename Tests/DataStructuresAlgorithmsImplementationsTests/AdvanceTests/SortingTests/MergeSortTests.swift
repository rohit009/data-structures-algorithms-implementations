//
//  MergeSortTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 19/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class MergeSortTests: XCTestCase {
    
    var systemUnderTest: MergeSort!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = MergeSort()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testSortNumbers_EmptyArray() {
        let input: [Int] = []
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [])
    }
    
    func testSortNumbers_SingleElement() {
        let input: [Int] = [5]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [5])
    }
    
    func testSortNumbers_TwoElementsAlreadySorted() {
        let input: [Int] = [1, 2]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [1, 2])
    }
    
    func testSortNumbers_TwoElementsUnsorted() {
        let input: [Int] = [2, 1]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [1, 2])
    }
    
    func testSortNumbers_AllElementsIdentical() {
        let input: [Int] = [3, 3, 3, 3]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [3, 3, 3, 3])
    }
    
    // MARK: - Variations
    
    func testSortNumbers_AlreadySorted() {
        let input: [Int] = [1, 2, 3, 4, 5]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [1, 2, 3, 4, 5])
    }
    
    func testSortNumbers_ReverseSorted() {
        let input: [Int] = [5, 4, 3, 2, 1]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [1, 2, 3, 4, 5])
    }
    
    func testSortNumbers_DuplicateElements() {
        let input: [Int] = [3, 1, 2, 3, 1, 2]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [1, 1, 2, 2, 3, 3])
    }
    
    func testSortNumbers_NegativeNumbers() {
        let input: [Int] = [-5, 3, -1, 0, 9, -2]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [-5, -2, -1, 0, 3, 9])
    }
    
    func testSortNumbers_MixedPositiveNegativeAndZero() {
        let input: [Int] = [0, -1, 4, -3, 2]
        let result = systemUnderTest.sortNumbers(input)
        XCTAssertEqual(result, [-3, -1, 0, 2, 4])
    }
}
