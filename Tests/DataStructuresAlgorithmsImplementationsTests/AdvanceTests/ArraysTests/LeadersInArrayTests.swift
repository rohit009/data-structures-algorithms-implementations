//
//  LeadersInArrayTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 25/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class LeadersInArrayTests: XCTestCase {
    
    var systemUnderTest: LeadersInArray!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LeadersInArray()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testFindLeaders_DocExample() {
        let nums = [1, 2, 5, 3, 1, 2]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [5, 3, 2])
    }
    
    func testFindLeaders_MultipleLeaders() {
        let nums = [16, 17, 4, 3, 5, 2]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [17, 5, 2])
    }
    
    func testFindLeaders_DecreasingArray() {
        let nums = [5, 4, 3, 2, 1]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [5, 4, 3, 2, 1])
    }
    
    func testFindLeaders_IncreasingArray() {
        let nums = [1, 2, 3, 4, 5]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [5])
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindLeaders_EmptyArray() {
        let nums: [Int] = []
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [])
    }
    
    func testFindLeaders_SingleElement() {
        let nums = [42]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [42])
    }
    
    func testFindLeaders_TwoElementsIncreasing() {
        let nums = [1, 2]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [2])
    }
    
    func testFindLeaders_TwoElementsDecreasing() {
        let nums = [2, 1]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [2, 1])
    }
    
    func testFindLeaders_TwoElementsEqual() {
        let nums = [2, 2]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [2])
    }
    
    // MARK: - Variations
    
    func testFindLeaders_AllEqualElements() {
        let nums = [5, 5, 5, 5]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [5])
    }
    
    func testFindLeaders_NegativeNumbers() {
        let nums = [-3, -1, -5, -2]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [-1, -2])
    }
    
    func testFindLeaders_DuplicatesWithLeader() {
        let nums = [10, 20, 20, 10]
        let result = systemUnderTest.findLeaders(array: nums)
        XCTAssertEqual(result, [20, 10])
    }
}
