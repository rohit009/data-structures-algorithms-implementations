//
//  ReverseStringTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 27/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class ReverseStringTests: XCTestCase {
    
    var systemUnderTest: ReverseString!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = ReverseString()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testPerformReverse_EmptyArray() {
        var input: [Character] = []
        systemUnderTest.performReverse(chars: &input)
        XCTAssertEqual(input, [])
    }
    
    func testPerformReverse_SingleCharacter() {
        var input: [Character] = ["a"]
        systemUnderTest.performReverse(chars: &input)
        XCTAssertEqual(input, ["a"])
    }
    
    // MARK: - Positive/Example Conditions
    
    func testPerformReverse_OddLength() {
        var input: [Character] = ["h", "e", "l", "l", "o"]
        systemUnderTest.performReverse(chars: &input)
        XCTAssertEqual(input, ["o", "l", "l", "e", "h"])
    }
    
    func testPerformReverse_EvenLength() {
        var input: [Character] = ["H", "a", "n", "n", "a", "h"]
        systemUnderTest.performReverse(chars: &input)
        XCTAssertEqual(input, ["h", "a", "n", "n", "a", "H"])
    }
    
    func testPerformReverse_DuplicateCharacters() {
        var input: [Character] = ["a", "b", "a", "b"]
        systemUnderTest.performReverse(chars: &input)
        XCTAssertEqual(input, ["b", "a", "b", "a"])
    }
}
