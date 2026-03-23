//
//  Untitled.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 15/03/26.
//
import XCTest

@testable import DataStructuresAlgorithmsImplementations

class TriangleStarPatternTests: XCTestCase {
    
    var systemUnderTest: TriangleStarPattern!
    
    override func setUp() {
        systemUnderTest = TriangleStarPattern()
    }
    
    func testSorting_Input1() {
        let _ = systemUnderTest.createPattern(numberOfLines: 4)
    }
    
    func testSorting_Input2() {
        let _ = systemUnderTest.createPattern(numberOfLines: 1)
    }
    
    func testSorting_Input3() {
        let _ = systemUnderTest.createPattern(numberOfLines: 0)
    }
    
    func testSorting_Input4() {
        let _ = systemUnderTest.createPattern(numberOfLines: 6)
    }
    
    func testSorting_Input5() {
        let _ = systemUnderTest.createPattern(numberOfLines: -1)
    }
}
