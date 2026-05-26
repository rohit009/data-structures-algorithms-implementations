//
//  HighestAndLowestFrequencySumTests.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Antigravity on 26/05/26.
//

import XCTest
@testable import DataStructuresAlgorithmsImplementations

class HighestAndLowestFrequencySumTests: XCTestCase {
    
    var systemUnderTest: HighestAndLowestFrequencySum!
    
    override func setUp() {
        super.setUp()
        systemUnderTest = HighestAndLowestFrequencySum()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    // MARK: - Boundary Conditions
    
    func testCalculateFrequencySum_EmptyArray() {
        let output = systemUnderTest.calculateFrequencySum(numbers: [])
        XCTAssertEqual(output, 0)
    }
    
    func testCalculateFrequencySum_SingleElement() {
        let output = systemUnderTest.calculateFrequencySum(numbers: [5])
        // Frequency of 5 is 1. Both max and min frequency are 1. Sum = 2.
        XCTAssertEqual(output, 2)
    }
    
    // MARK: - Positive Conditions
    
    func testCalculateFrequencySum_AllUniqueElements() {
        let output = systemUnderTest.calculateFrequencySum(numbers: [3, 1, 4, 2])
        // All elements have a frequency of 1.
        // maxFrequency = 1, minFrequency = 1. Sum = 2.
        XCTAssertEqual(output, 2)
    }
    
    func testCalculateFrequencySum_DifferentFrequencies() {
        let output = systemUnderTest.calculateFrequencySum(numbers: [1, 2, 2, 3, 3, 3, 4, 4, 4, 4])
        // Frequencies: 1 (freq 1), 2 (freq 2), 3 (freq 3), 4 (freq 4)
        // minFrequency = 1, maxFrequency = 4. Sum = 5.
        XCTAssertEqual(output, 5)
    }
    
    func testCalculateFrequencySum_SameMaxAndMinFrequenciesForMultipleElements() {
        let output = systemUnderTest.calculateFrequencySum(numbers: [1, 1, 2, 2, 3, 3, 3, 4, 4, 4])
        // Frequencies: 1 (freq 2), 2 (freq 2), 3 (freq 3), 4 (freq 3)
        // minFrequency = 2, maxFrequency = 3. Sum = 5.
        XCTAssertEqual(output, 5)
    }
    
    func testCalculateFrequencySum_LargeArray() {
        let array = Array(repeating: 5, count: 1000) + Array(repeating: 10, count: 500)
        // 5 has frequency 1000, 10 has frequency 500.
        // minFrequency = 500, maxFrequency = 1000. Sum = 1500.
        let output = systemUnderTest.calculateFrequencySum(numbers: array)
        XCTAssertEqual(output, 1500)
    }
}
