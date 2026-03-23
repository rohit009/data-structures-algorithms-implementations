//
//  Untitled.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 15/03/26.
//
import XCTest

@testable import DataStructuresAlgorithmsImplementations

class UpsideDownRightAngleTriangleStarPatternTests: XCTestCase {
    
    var systemUnderTest: UpsideDownRightAngleTriangleStarPattern!
    
    override func setUp() {
        systemUnderTest = UpsideDownRightAngleTriangleStarPattern()
    }
    
    func testSorting_Input1() {
        let _ = systemUnderTest.createPattern(numberOfRows: 4)
    }
    
    func testSorting_Input2() {
        let _ = systemUnderTest.createPattern(numberOfRows: 1)
    }
    
    func testSorting_Input3() {
        let _ = systemUnderTest.createPattern(numberOfRows: 0)
    }
    
    func testSorting_Input4() {
        let _ = systemUnderTest.createPattern(numberOfRows: 6)
    }
    
    func testSorting_Input5() {
        let _ = systemUnderTest.createPattern(numberOfRows: -1)
    }
}
