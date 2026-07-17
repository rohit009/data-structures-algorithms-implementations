import XCTest
@testable import DataStructuresAlgorithmsImplementations

final class ReverseArrayTests: XCTestCase {
    var sut: ReverseArray!

    override func setUp() {
        super.setUp()
        sut = ReverseArray()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testReverseArrayWithMultipleElements() {
        var array = [1, 2, 3, 4, 5]
        sut.reverseArray(numbers: &array)
        XCTAssertEqual(array, [5, 4, 3, 2, 1])
    }
    
    func testReverseArrayWithEvenNumberOfElements() {
        var array = [1, 2, 3, 4]
        sut.reverseArray(numbers: &array)
        XCTAssertEqual(array, [4, 3, 2, 1])
    }

    func testReverseArrayWithSingleElement() {
        var array = [42]
        sut.reverseArray(numbers: &array)
        XCTAssertEqual(array, [42])
    }

    func testReverseArrayWithEmptyArray() {
        var array: [Int] = []
        sut.reverseArray(numbers: &array)
        XCTAssertEqual(array, [])
    }
}
