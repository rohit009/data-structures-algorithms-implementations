//
//  MaximumConsecutiveOnesTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 20/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class MaximumConsecutiveOnesTests: XCTestCase {
    
    var systemUnderTest: MaximumConsecutiveOnes!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = MaximumConsecutiveOnes()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindMaximumConsecutiveOnes_EmptyArray() {
        let input: [Int] = []
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 0)
    }
    
    func testFindMaximumConsecutiveOnes_SingleZero() {
        let input: [Int] = [0]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 0)
    }
    
    func testFindMaximumConsecutiveOnes_SingleOne() {
        let input: [Int] = [1]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 1)
    }
    
    func testFindMaximumConsecutiveOnes_AllZeros() {
        let input: [Int] = [0, 0, 0, 0]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 0)
    }
    
    func testFindMaximumConsecutiveOnes_AllOnes() {
        let input: [Int] = [1, 1, 1, 1, 1]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 5)
    }
    
    // MARK: - Variations
    
    func testFindMaximumConsecutiveOnes_OnesAtBeginning() {
        let input: [Int] = [1, 1, 1, 0, 0]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 3)
    }
    
    func testFindMaximumConsecutiveOnes_OnesAtEnd() {
        let input: [Int] = [0, 0, 1, 1, 1, 1]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 4)
    }
    
    func testFindMaximumConsecutiveOnes_OnesInMiddle() {
        let input: [Int] = [0, 1, 1, 1, 0]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 3)
    }
    
    func testFindMaximumConsecutiveOnes_AlternatingOnesAndZeros() {
        let input: [Int] = [1, 0, 1, 0, 1, 0, 1]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 1)
    }
    
    func testFindMaximumConsecutiveOnes_MultipleSequences() {
        let input: [Int] = [1, 1, 0, 0, 1, 1, 1, 0, 1, 1]
        let result = systemUnderTest.findMaximumConsecutiveOnes(input)
        XCTAssertEqual(result, 3)
    }
}
