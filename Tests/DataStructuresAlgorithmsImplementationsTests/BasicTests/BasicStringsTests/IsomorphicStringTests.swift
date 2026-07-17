//
//  IsomorphicStringTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 31/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class IsomorphicStringTests: XCTestCase {
    
    var systemUnderTest: IsomorphicString!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = IsomorphicString()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func testAreIsomorphicStrings_EmptyStrings() {
        XCTAssertTrue(systemUnderTest.areIsomorphicStrings(string: "", target: ""))
    }
    
    func testAreIsomorphicStrings_DifferentLengths() {
        XCTAssertFalse(systemUnderTest.areIsomorphicStrings(string: "abc", target: "ab"))
    }
    
    func testAreIsomorphicStrings_EggAdd_Isomorphic() {
        XCTAssertTrue(systemUnderTest.areIsomorphicStrings(string: "egg", target: "add"))
    }
    
    func testAreIsomorphicStrings_FooBar_NotIsomorphic() {
        XCTAssertFalse(systemUnderTest.areIsomorphicStrings(string: "foo", target: "bar"))
    }
    
    func testAreIsomorphicStrings_PaperTitle_Isomorphic() {
        XCTAssertTrue(systemUnderTest.areIsomorphicStrings(string: "paper", target: "title"))
    }
    
    func testAreIsomorphicStrings_AbaBab_Isomorphic() {
        XCTAssertTrue(systemUnderTest.areIsomorphicStrings(string: "aba", target: "bab"))
    }
}
