//
//  CountDigitsOfNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//
import XCTest

@testable import DataStructuresAlgorithmsImplementations

class CountDigitsOfNumberTests: XCTestCase {
    
    var systemUnderTest: CountDigitsOfNumber!
    
    override func setUp() {
        systemUnderTest = CountDigitsOfNumber()
    }
    
    func testCountOfDigits_Input1() {
        let output = systemUnderTest.countDigits(number: 4)
        
        XCTAssertEqual(output, 1)
    }
    
    func testCountOfDigits_Input2() {
        let output = systemUnderTest.countDigits(number: 0)
        
        XCTAssertEqual(output, 1)
    }

    func testCountOfDigits_Input3() {
        let output = systemUnderTest.countDigits(number: 345)
        
        XCTAssertEqual(output, 3)
    }
    
    func testCountOfDigits_Input4() {
        let output = systemUnderTest.countDigits(number: 9876)
        
        XCTAssertEqual(output, 4)
    }
    
    func testCountOfDigits_Input5() {
        let output = systemUnderTest.countDigits(number: -500)
        
        XCTAssertEqual(output, 3)
    }
}
