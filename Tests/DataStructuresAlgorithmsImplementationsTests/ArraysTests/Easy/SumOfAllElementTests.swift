import XCTest
@testable import DataStructuresAlgorithmsImplementations

final class SumOfAllElementTests: XCTestCase {
    var sut: SumOfAllElement!

    override func setUp() {
        super.setUp()
        sut = SumOfAllElement()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testCalculateSumWithPositiveNumbers() {
        let array = [1, 2, 3, 4, 5]
        let result = sut.calculateSum(array: array)
        XCTAssertEqual(result, 15)
    }

    func testCalculateSumWithNegativeNumbers() {
        let array = [-1, -2, -3, -4, -5]
        let result = sut.calculateSum(array: array)
        XCTAssertEqual(result, -15)
    }

    func testCalculateSumWithMixedNumbers() {
        let array = [1, -2, 3, -4, 5]
        let result = sut.calculateSum(array: array)
        XCTAssertEqual(result, 3)
    }

    func testCalculateSumWithEmptyArray() {
        let array: [Int] = []
        let result = sut.calculateSum(array: array)
        XCTAssertEqual(result, 0)
    }

    func testCalculateSumWithSingleElement() {
        let array = [42]
        let result = sut.calculateSum(array: array)
        XCTAssertEqual(result, 42)
    }
}
