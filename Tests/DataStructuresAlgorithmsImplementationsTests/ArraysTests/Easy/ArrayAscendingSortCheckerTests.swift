import XCTest
@testable import DataStructuresAlgorithmsImplementations

final class ArrayAscendingSortCheckerTests: XCTestCase {
    var sut: ArrayAscendingSortChecker!

    override func setUp() {
        super.setUp()
        sut = ArrayAscendingSortChecker()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testIsSortedWithSortedArray() {
        let array = [1, 2, 3, 4, 5]
        XCTAssertTrue(sut.isSorted(numbers: array))
    }

    func testIsSortedWithUnsortedArray() {
        let array = [1, 3, 2, 4, 5]
        XCTAssertFalse(sut.isSorted(numbers: array))
    }
    
    func testIsSortedWithArrayHavingDuplicates() {
        let array = [1, 2, 2, 3, 4]
        XCTAssertTrue(sut.isSorted(numbers: array))
    }
    
    func testIsSortedWithReverseSortedArray() {
        let array = [5, 4, 3, 2, 1]
        XCTAssertFalse(sut.isSorted(numbers: array))
    }

    func testIsSortedWithEmptyArray() {
        let array: [Int] = []
        XCTAssertTrue(sut.isSorted(numbers: array))
    }

    func testIsSortedWithSingleElementArray() {
        let array = [42]
        XCTAssertTrue(sut.isSorted(numbers: array))
    }
}
