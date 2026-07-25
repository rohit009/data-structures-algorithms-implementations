//
//  IntersectionOfTwoSortedArraysTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 25/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class IntersectionOfTwoSortedArraysTests: XCTestCase {
    
    var systemUnderTest: IntersectionOfTwoSortedArrays!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = IntersectionOfTwoSortedArrays()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testFindIntersection_DocExample() {
        let nums1 = [1, 2, 2, 3, 3, 3]
        let nums2 = [2, 3, 3, 4, 5, 7]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [2, 3, 3])
    }
    
    func testFindIntersection_PartialOverlap() {
        let nums1 = [1, 2, 3, 4, 5]
        let nums2 = [2, 4, 6]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [2, 4])
    }
    
    func testFindIntersection_DisjointArrays() {
        let nums1 = [1, 3, 5]
        let nums2 = [2, 4, 6]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [])
    }
    
    func testFindIntersection_OneArraySubsetOfAnother() {
        let nums1 = [1, 2, 3, 4, 5]
        let nums2 = [2, 3]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [2, 3])
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindIntersection_BothEmpty() {
        let nums1: [Int] = []
        let nums2: [Int] = []
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [])
    }
    
    func testFindIntersection_FirstEmpty() {
        let nums1: [Int] = []
        let nums2 = [1, 2, 3]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [])
    }
    
    func testFindIntersection_SecondEmpty() {
        let nums1 = [1, 2, 3]
        let nums2: [Int] = []
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [])
    }
    
    func testFindIntersection_SingleElementEqual() {
        let nums1 = [5]
        let nums2 = [5]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [5])
    }
    
    func testFindIntersection_SingleElementDifferent() {
        let nums1 = [1]
        let nums2 = [2]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [])
    }
    
    // MARK: - Variations
    
    func testFindIntersection_MultipleDuplicatesInBoth() {
        let nums1 = [1, 1, 1, 2, 2]
        let nums2 = [1, 1, 2, 2, 2]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [1, 1, 2, 2])
    }
    
    func testFindIntersection_IdenticalArrays() {
        let nums1 = [1, 2, 3]
        let nums2 = [1, 2, 3]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [1, 2, 3])
    }
    
    func testFindIntersection_NegativeNumbers() {
        let nums1 = [-5, -3, -1, 0]
        let nums2 = [-4, -3, 0, 2]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [-3, 0])
    }
    
    func testFindIntersection_DifferentLengths() {
        let nums1 = [1]
        let nums2 = [1, 1, 1, 1]
        let result = systemUnderTest.findIntersection(nums1: nums1, nums2: nums2)
        XCTAssertEqual(result, [1])
    }
}
