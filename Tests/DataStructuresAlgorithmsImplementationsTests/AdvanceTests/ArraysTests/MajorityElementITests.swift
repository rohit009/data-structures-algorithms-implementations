//
//  MajorityElementITests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 25/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class MajorityElementITests: XCTestCase {
    
    var systemUnderTest: MajorityElementI!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = MajorityElementI()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testFindMajorityElement_DocExample() {
        let nums = [7, 0, 0, 1, 7, 7, 2, 7, 7]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 7)
    }
    
    func testFindMajorityElement_StandardOddLength() {
        let nums = [2, 2, 1, 1, 1, 2, 2]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 2)
    }
    
    func testFindMajorityElement_StandardEvenLength() {
        let nums = [3, 3, 4, 2, 3, 3, 3, 1]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 3)
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindMajorityElement_EmptyArray() {
        let nums: [Int] = []
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, -1)
    }
    
    func testFindMajorityElement_SingleElement() {
        let nums = [42]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 42)
    }
    
    func testFindMajorityElement_TwoSameElements() {
        let nums = [5, 5]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 5)
    }
    
    func testFindMajorityElement_TwoDifferentElements() {
        let nums = [1, 2]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, -1)
    }
    
    func testFindMajorityElement_AllSameElements() {
        let nums = [9, 9, 9, 9, 9]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 9)
    }
    
    // MARK: - Variations
    
    func testFindMajorityElement_NegativeNumbers() {
        let nums = [-1, -1, -1, 2, 3]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, -1)
    }
    
    func testFindMajorityElement_NoMajorityElement() {
        let nums = [1, 2, 3, 4, 5]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, -1)
    }
    
    func testFindMajorityElement_ExactHalfCountNoMajority() {
        // Size is 6, count of 2 is 3. 3 is not > 6/2 (3 > 3 is false).
        let nums = [2, 2, 2, 1, 3, 4]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, -1)
    }
    
    func testFindMajorityElement_MajorityAtEnd() {
        let nums = [1, 2, 3, 4, 4, 4, 4]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 4)
    }
    
    func testFindMajorityElement_MajorityAtStart() {
        let nums = [4, 4, 4, 4, 1, 2, 3]
        let result = systemUnderTest.findMajorityElement(array: nums)
        XCTAssertEqual(result, 4)
    }
}
