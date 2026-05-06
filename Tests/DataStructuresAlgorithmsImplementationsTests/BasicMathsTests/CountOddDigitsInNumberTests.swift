//
//  CountOddDigitsInNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//
import XCTest

@testable import DataStructuresAlgorithmsImplementations

class CountOddDigitsInNumberTests: XCTestCase {
    
    var systemUnderTest: CountOddDigitsInNumber!
    
    override func setUp() {
        systemUnderTest = CountOddDigitsInNumber()
    }
    
    func testCountOfOddDigits_Input1() {
        let output = systemUnderTest.countOddDigits(number: 4)
        
        XCTAssertEqual(output, 0)
    }
    
    func testCountOfOddDigits_Input2() {
        let output = systemUnderTest.countOddDigits(number: 0)
        
        XCTAssertEqual(output, 0)
    }
    
    func testCountOfOddDigits_Input3() {
        let output = systemUnderTest.countOddDigits(number: 7)
        
        XCTAssertEqual(output, 1)
    }

    func testCountOfOddDigits_Input4() {
        let output = systemUnderTest.countOddDigits(number: 345)
        
        XCTAssertEqual(output, 2)
    }
    
    func testCountOfOddDigits_Input5() {
        let output = systemUnderTest.countOddDigits(number: 9875)
        
        XCTAssertEqual(output, 3)
    }
    
    func testCountOfOddDigits_Input6() {
        let output = systemUnderTest.countOddDigits(number: -500)
        
        XCTAssertEqual(output, 1)
    }
}
