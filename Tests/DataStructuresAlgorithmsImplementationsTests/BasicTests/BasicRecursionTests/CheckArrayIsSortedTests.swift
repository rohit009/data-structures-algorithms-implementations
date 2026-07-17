//
//  CheckArrayIsSortedTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 2026-07-13.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class CheckArrayIsSortedTests: XCTestCase {
    
    var systemUnderTest: CheckArrayIsSorted!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = CheckArrayIsSorted()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary & Edge Cases
    
    func testIsSorted_EmptyArray() {
        XCTAssertTrue(systemUnderTest.isSorted(nums: []))
    }
    
    func testIsSorted_SingleElement() {
        XCTAssertTrue(systemUnderTest.isSorted(nums: [5]))
        XCTAssertTrue(systemUnderTest.isSorted(nums: [-10]))
        XCTAssertTrue(systemUnderTest.isSorted(nums: [0]))
    }
    
    // MARK: - Sorted Arrays
    
    func testIsSorted_StrictlyIncreasing() {
        XCTAssertTrue(systemUnderTest.isSorted(nums: [1, 2, 3, 4, 5]))
    }
    
    func testIsSorted_NonDecreasingWithDuplicates() {
        XCTAssertTrue(systemUnderTest.isSorted(nums: [1, 2, 2, 3, 3, 4]))
    }
    
    func testIsSorted_AllElementsIdentical() {
        XCTAssertTrue(systemUnderTest.isSorted(nums: [5, 5, 5, 5]))
    }
    
    func testIsSorted_NegativeNumbersSorted() {
        XCTAssertTrue(systemUnderTest.isSorted(nums: [-10, -5, 0, 5, 10]))
    }
    
    func testIsSorted_LargeValuesSorted() {
        XCTAssertTrue(systemUnderTest.isSorted(nums: [Int.min, -1000, 0, 1000, Int.max]))
    }
    
    // MARK: - Unsorted Arrays
    
    func testIsSorted_StrictlyDecreasing() {
        XCTAssertFalse(systemUnderTest.isSorted(nums: [5, 4, 3, 2, 1]))
    }
    
    func testIsSorted_UnsortedAtStart() {
        XCTAssertFalse(systemUnderTest.isSorted(nums: [2, 1, 3, 4, 5]))
    }
    
    func testIsSorted_UnsortedInMiddle() {
        XCTAssertFalse(systemUnderTest.isSorted(nums: [1, 2, 4, 3, 5]))
    }
    
    func testIsSorted_UnsortedAtEnd() {
        XCTAssertFalse(systemUnderTest.isSorted(nums: [1, 2, 3, 5, 4]))
    }
    
    func testIsSorted_DuplicatesWithDrop() {
        XCTAssertFalse(systemUnderTest.isSorted(nums: [1, 2, 2, 1, 3]))
    }
    
    func testIsSorted_AlternatingUnsorted() {
        XCTAssertFalse(systemUnderTest.isSorted(nums: [2, 3, 2, 3, 2]))
    }
    
    func testIsSorted_ExtremeUnsorted() {
        XCTAssertFalse(systemUnderTest.isSorted(nums: [Int.max, Int.min]))
    }
}
