//
//  Untitled.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 15/03/26.
//
import XCTest

@testable import DataStructuresAlgorithmsImplementations

class SumOfFirstLastElementTests: XCTestCase {
    
    var systemUnderTest: SumOfFirstLastElement!
    
    override func setUp() {
        systemUnderTest = SumOfFirstLastElement()
    }
    
    func testSorting_Input1() {
        let output = systemUnderTest.performFirstAndLastAddition(array: [2, 5])
        
        XCTAssertEqual(output, 7)
    }
    
    func testSorting_Input2() {
        let output = systemUnderTest.performFirstAndLastAddition(array: [])
        
        XCTAssertEqual(output, 0)
    }
    
    
    func testSorting_Input3() {
        let output = systemUnderTest.performFirstAndLastAddition(array: [2, 7, 2, 1])
        
        XCTAssertEqual(output, 3)
    }

    func testSorting_Input4() {
        let output = systemUnderTest.performFirstAndLastAddition(array: [5])
        
        XCTAssertEqual(output, 10)
    }
}
