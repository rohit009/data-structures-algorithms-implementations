//
//  CountOfOddNumbers.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 18/05/26.
//

class ArrayAscendingSortChecker {
    /// Check if the Array is Sorted I
    /// https://takeuforward.org/plus/dsa/problems/check-if-the-array-is-sorted-i
    func isSorted(numbers: [Int]) -> Bool {
        guard numbers.count >= 2 else {
            return true
        }
    
        for i in 1..<numbers.endIndex {
            if numbers[i-1] > numbers[i] {
                return false
            }
        }
        
        return true
    }
}
