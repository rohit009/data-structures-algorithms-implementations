//
//  UnionOfTwoSortedArraysTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 23/07/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class UnionOfTwoSortedArraysTests: XCTestCase {
    
    var systemUnderTest: UnionOfTwoSortedArrays!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = UnionOfTwoSortedArrays()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Standard Cases
    
    func testFindUnion_DocExample() {
        let array1 = [1, 2, 3, 4, 5]
        let array2 = [1, 2, 7]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2, 3, 4, 5, 7])
    }
    
    func testFindUnion_DisjointArrays() {
        let array1 = [1, 3, 5]
        let array2 = [2, 4, 6]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2, 3, 4, 5, 6])
    }
    
    func testFindUnion_OneArraySubsetOfAnother() {
        let array1 = [1, 2, 3, 4, 5]
        let array2 = [2, 3]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2, 3, 4, 5])
    }
    
    // MARK: - Boundary & Corner Cases
    
    func testFindUnion_BothEmpty() {
        let array1: [Int] = []
        let array2: [Int] = []
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [])
    }
    
    func testFindUnion_FirstEmpty() {
        let array1: [Int] = []
        let array2 = [1, 2, 3]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2, 3])
    }
    
    func testFindUnion_SecondEmpty() {
        let array1 = [1, 2, 3]
        let array2: [Int] = []
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2, 3])
    }
    
    func testFindUnion_SingleElementArrays() {
        let array1 = [1]
        let array2 = [2]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2])
    }
    
    func testFindUnion_SingleElementEqual() {
        let array1 = [5]
        let array2 = [5]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [5])
    }
    
    // MARK: - Variations
    
    func testFindUnion_ArraysWithDuplicates() {
        let array1 = [1, 1, 2, 2, 3]
        let array2 = [2, 3, 4, 4, 5]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2, 3, 4, 5])
    }
    
    func testFindUnion_IdenticalArrays() {
        let array1 = [1, 2, 3]
        let array2 = [1, 2, 3]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [1, 2, 3])
    }
    
    func testFindUnion_NegativeNumbers() {
        let array1 = [-5, -3, 0]
        let array2 = [-4, -3, 2]
        let result = systemUnderTest.findUnion(array1: array1, array2: array2)
        XCTAssertEqual(result, [-5, -4, -3, 0, 2])
    }
}
