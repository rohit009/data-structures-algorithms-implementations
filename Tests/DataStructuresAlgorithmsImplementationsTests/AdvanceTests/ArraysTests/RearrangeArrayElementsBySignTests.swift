//
//  RearrangeArrayElementsBySignTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 26/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class RearrangeArrayElementsBySignTests: XCTestCase {
    
    var systemUnderTest: RearrangeArrayElementsBySign!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = RearrangeArrayElementsBySign()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testRearrangeElements_DocExample() {
        let nums = [2, 4, 5, -1, -3, -4]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [2, -1, 4, -3, 5, -4])
    }
    
    func testRearrangeElements_DryRunExample() {
        let nums = [1, -1, -3, -4, 2, 3]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [1, -1, 2, -3, 3, -4])
    }
    
    func testRearrangeElements_AlternatingInput() {
        let nums = [1, -1, 2, -2, 3, -3]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [1, -1, 2, -2, 3, -3])
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testRearrangeElements_EmptyArray() {
        let nums: [Int] = []
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [])
    }
    
    func testRearrangeElements_TwoElements() {
        let nums = [1, -1]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [1, -1])
    }
    
    func testRearrangeElements_TwoElementsReversedInput() {
        let nums = [-1, 1]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [1, -1])
    }
    
    func testRearrangeElements_FourElementsPositivesFirst() {
        let nums = [1, 2, -1, -2]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [1, -1, 2, -2])
    }
    
    func testRearrangeElements_FourElementsNegativesFirst() {
        let nums = [-1, -2, 1, 2]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [1, -1, 2, -2])
    }
    
    // MARK: - Variations
    
    func testRearrangeElements_LargeNumbers() {
        let nums = [100, 200, -500, -600]
        let result = systemUnderTest.rearrangeElements(array: nums)
        XCTAssertEqual(result, [100, -500, 200, -600])
    }
}
