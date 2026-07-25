//
//  FindMissingNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 23/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class FindMissingNumberTests: XCTestCase {
    
    var systemUnderTest: FindMissingNumber!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = FindMissingNumber()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testFindMissingNumber_DocExample() {
        let input = [0, 2, 3, 1, 4]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 5)
    }
    
    func testFindMissingNumber_UnsortedArrayMiddleMissing() {
        let input = [3, 0, 1]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 2)
    }
    
    func testFindMissingNumber_LargerUnsortedArray() {
        let input = [9, 6, 4, 2, 3, 5, 7, 0, 1]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 8)
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindMissingNumber_EmptyArray() {
        let input: [Int] = []
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 0)
    }
    
    func testFindMissingNumber_SingleElement_ZeroPresent() {
        let input = [0]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 1)
    }
    
    func testFindMissingNumber_SingleElement_OnePresent() {
        let input = [1]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 0)
    }
    
    func testFindMissingNumber_MissingFirstElement() {
        let input = [1, 2, 3, 4, 5]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 0)
    }
    
    func testFindMissingNumber_MissingLastElement() {
        let input = [0, 1, 2, 3, 4]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 5)
    }
    
    // MARK: - Variations
    
    func testFindMissingNumber_TwoElements_MissingZero() {
        let input = [1, 2]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 0)
    }
    
    func testFindMissingNumber_TwoElements_MissingOne() {
        let input = [0, 2]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 1)
    }
    
    func testFindMissingNumber_TwoElements_MissingTwo() {
        let input = [0, 1]
        let result = systemUnderTest.find(in: input)
        XCTAssertEqual(result, 2)
    }
}
