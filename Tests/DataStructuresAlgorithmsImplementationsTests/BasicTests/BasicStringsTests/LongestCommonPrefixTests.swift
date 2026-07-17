//
//  LongestCommonPrefixTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 31/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class LongestCommonPrefixTests: XCTestCase {
    
    var systemUnderTest: LongestCommonPrefix!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = LongestCommonPrefix()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testFindLongestCommonPrefix_EmptyArray() {
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: []), "")
    }
    
    func testFindLongestCommonPrefix_SingleString() {
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["apple"]), "apple")
    }
    
    func testFindLongestCommonPrefix_EmptyStringsInArray() {
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["", "apple", "app"]), "")
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["apple", "", "app"]), "")
    }
    
    // MARK: - Normal Cases
    
    func testFindLongestCommonPrefix_CommonPrefixExists() {
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["flower", "flow", "flight"]), "fl")
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["dog", "racecar", "car"]), "")
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["interspecies", "interstellar", "interstate"]), "inters")
    }
    
    func testFindLongestCommonPrefix_AllIdentical() {
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["same", "same", "same"]), "same")
    }
    
    func testFindLongestCommonPrefix_NoCommonPrefix() {
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["apple", "banana", "cherry"]), "")
    }
    
    func testFindLongestCommonPrefix_OneCharacterDifference() {
        XCTAssertEqual(systemUnderTest.findLongestCommonPrefix(strings: ["abc", "abd", "abe"]), "ab")
    }
}
