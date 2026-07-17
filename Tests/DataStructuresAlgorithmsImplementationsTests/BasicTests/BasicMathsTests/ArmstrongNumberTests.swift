//
//  ArmstrongNumberTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import XCTest

@testable import DataStructuresAlgorithmsImplementations

class ArmstrongNumberTests: XCTestCase {
    
    var systemUnderTest: ArmstrongNumber!
    
    override func setUp() {
        systemUnderTest = ArmstrongNumber()
    }
    
    func testArmstrongNumber_Input1() {
        let output = systemUnderTest.isArmstrongNumber(number: 4)
        
        XCTAssertTrue(output)
    }
    
    func testArmstrongNumber_Input2() {
        let output = systemUnderTest.isArmstrongNumber(number: 0)
        
        XCTAssertTrue(output)
    }
    
    func testArmstrongNumber_Input3() {
        let output = systemUnderTest.isArmstrongNumber(number: 72)
        
        XCTAssertFalse(output)
    }

    func testArmstrongNumber_Input4() {
        let output = systemUnderTest.isArmstrongNumber(number: 46)
        
        XCTAssertFalse(output)
    }
    
    func testArmstrongNumber_Input5() {
        let output = systemUnderTest.isArmstrongNumber(number: 9875)
        
        XCTAssertFalse(output)
    }
    
    func testArmstrongNumber_Input6() {
        let output = systemUnderTest.isArmstrongNumber(number: -500)
        
        XCTAssertFalse(output)
    }
    
    func testArmstrongNumber_Input7() {
        let output = systemUnderTest.isArmstrongNumber(number: -721)
        
        XCTAssertFalse(output)
    }
    
    func testArmstrongNumber_Input8() {
        let output = systemUnderTest.isArmstrongNumber(number: 153)
        
        XCTAssertTrue(output)
    }
    
    func testArmstrongNumber_Input9() {
        let output = systemUnderTest.isArmstrongNumber(number: -370)
        
        XCTAssertFalse(output)
    }
    
    func testArmstrongNumber_Input10() {
        let output = systemUnderTest.isArmstrongNumber(number: 1634)
        
        XCTAssertTrue(output)
    }
}
