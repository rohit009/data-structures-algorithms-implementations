//
//  MajorityElementI.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 25/07/26.
//

import Foundation

/// Majority Element-I
/// Given an integer array nums of size n, return the majority element of the array.
///
/// The majority element of an array is an element that appears more than n/2 times in the array.
/// The array is guaranteed to have a majority element.
/// Example 1
/// - Input: nums = [7, 0, 0, 1, 7, 7, 2, 7, 7]
/// - Output: 7
/// - Explanation: The number 7 appears 5 times in the 9 sized array
class MajorityElementI {
    
    /// Optimal approach: Using Moore's voting algorithm.
    func findMajorityElement(array: [Int]) -> Int {
        guard !array.isEmpty else {
            return -1
        }

        var element = array[0]
        var count = 0
        for i in 0..<array.count {
            if count == 0 {
                element = array[i]
                count = 1
            } else if array[i] == element {
                count += 1
            } else {
                count -= 1
            }
        }
        
        // To be checked when it does not mention if majority element is guaranteed.
        let totalCountOfElement = array.count(where: { $0 == element })

        return (totalCountOfElement > array.count / 2) ? element : -1
    }
}
