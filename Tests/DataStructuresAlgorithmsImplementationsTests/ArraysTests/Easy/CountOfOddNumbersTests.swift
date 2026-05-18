import XCTest
@testable import DataStructuresAlgorithmsImplementations

final class CountOfOddNumbersTests: XCTestCase {
    var sut: CountOfOddNumbers!

    override func setUp() {
        super.setUp()
        sut = CountOfOddNumbers()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testFindOddNumbersCountWithOnlyOddNumbers() {
        let array = [1, 3, 5, 7, 9]
        let result = sut.findOddNumbersCount(array: array)
        XCTAssertEqual(result, 5)
    }

    func testFindOddNumbersCountWithOnlyEvenNumbers() {
        let array = [2, 4, 6, 8, 10]
        let result = sut.findOddNumbersCount(array: array)
        XCTAssertEqual(result, 0)
    }

    func testFindOddNumbersCountWithMixedNumbers() {
        let array = [1, 2, 3, 4, 5]
        let result = sut.findOddNumbersCount(array: array)
        XCTAssertEqual(result, 3)
    }

    func testFindOddNumbersCountWithNegativeOddNumbers() {
        let array = [-1, -3, -5]
        let result = sut.findOddNumbersCount(array: array)
        XCTAssertEqual(result, 3)
    }
    
    func testFindOddNumbersCountWithNegativeEvenNumbers() {
        let array = [-2, -4, -6]
        let result = sut.findOddNumbersCount(array: array)
        XCTAssertEqual(result, 0)
    }

    func testFindOddNumbersCountWithEmptyArray() {
        let array: [Int] = []
        let result = sut.findOddNumbersCount(array: array)
        XCTAssertEqual(result, 0)
    }

    func testIsOddReturnsTrueForOddNumber() {
        XCTAssertTrue(sut.isOdd(number: 7))
        XCTAssertTrue(sut.isOdd(number: -11))
    }

    func testIsOddReturnsFalseForEvenNumber() {
        XCTAssertFalse(sut.isOdd(number: 8))
        XCTAssertFalse(sut.isOdd(number: -4))
        XCTAssertFalse(sut.isOdd(number: 0))
    }
}
