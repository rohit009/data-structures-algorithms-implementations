//
//  SortCharactersByFrequencyTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 31/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class SortCharactersByFrequencyTests: XCTestCase {
    
    var systemUnderTest: SortCharactersByFrequency!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = SortCharactersByFrequency()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testSort_EmptyString() {
        XCTAssertEqual(systemUnderTest.sort(string: ""), [])
    }
    
    func testSort_SingleCharacter() {
        XCTAssertEqual(systemUnderTest.sort(string: "a"), ["a"])
    }
    
    func testSort_AllSameCharacters() {
        XCTAssertEqual(systemUnderTest.sort(string: "zzzzzzz"), ["z"])
    }
    
    // MARK: - Standard Cases
    
    func testSort_Tree() {
        XCTAssertEqual(systemUnderTest.sort(string: "tree"), ["e", "r", "t"])
    }
    
    func testSort_Raaaajj() {
        XCTAssertEqual(systemUnderTest.sort(string: "raaaajj"), ["a", "j", "r"])
    }
    
    func testSort_Bbcdddaaa() {
        XCTAssertEqual(systemUnderTest.sort(string: "bbcdddaaa"), ["a", "d", "b", "c"])
    }
    
    // MARK: - Tie-Breaking Cases (Alphabetical)
    
    func testSort_TieBreakerAlphabetical() {
        // All frequencies are 1, should sort alphabetically
        XCTAssertEqual(systemUnderTest.sort(string: "fedcba"), ["a", "b", "c", "d", "e", "f"])
    }
    
    func testSort_MixedFrequenciesAndTies() {
        // b: 2, c: 2, a: 1
        // b and c tie on frequency, so they sort alphabetically ('b' before 'c')
        XCTAssertEqual(systemUnderTest.sort(string: "ccbba"), ["b", "c", "a"])
    }
}
