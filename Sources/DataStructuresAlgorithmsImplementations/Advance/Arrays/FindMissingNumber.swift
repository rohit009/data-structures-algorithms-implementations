//
//  FindMissingNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 23/07/26.
//

/// **Find missing number**
/// Given an integer array of size n containing distinct values in the range from 0 to n (inclusive),
/// return the only number missing from the array within this range.
///
/// Example 1
/// - Input: nums = [0, 2, 3, 1, 4]
/// - Output: 5
/// - Explanation: nums contains 0, 1, 2, 3, 4 thus leaving 5 as the only missing number in the
/// range [0, 5].
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/find-missing-number?subject=dsa&approach=optimal-ii
class FindMissingNumber {

    /// Optimal solution - 2
    func find(in array: [Int]) -> Int {
        let highestNumber = array.count
        var xorResult1 = 0
        for i in 0...highestNumber {
            xorResult1 = xorResult1 ^ i
        }
        
        var xorResult2 = 0
        for j in 0..<array.count {
            xorResult2 = xorResult2 ^ array[j]
        }
        
        return xorResult1 ^ xorResult2
    }

//    /// Optimal solution - 1
//    func find(in array: [Int]) -> Int {
//        let highestNumber = array.count
//        
//        let sum = highestNumber * (highestNumber + 1) / 2
//        
//        let sumOfArrayElements = array.reduce(0, +)
//        
//        return sum - sumOfArrayElements
//    }
}
