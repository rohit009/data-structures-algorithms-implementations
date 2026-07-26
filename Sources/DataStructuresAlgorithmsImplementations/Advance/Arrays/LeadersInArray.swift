//
//  LeadersInArray.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 25/07/26.
//

/// **Leaders in an Array**
/// Given an integer array nums, return a list of all the leaders in the array.
///
/// A leader in an array is an element whose value is strictly greater than all elements to its
/// right in the given array. The rightmost element is always a leader. The elements in the leader
/// array must appear in the order they appear in the nums array.
///
/// Example 1
/// - Input: nums = [1, 2, 5, 3, 1, 2]
/// - Output: [5, 3, 2]
/// - Explanation: 2 is the rightmost element, 3 is the largest element in the index range [3, 5],
/// 5 is the largest element in the index range [2, 5]
class LeadersInArray {
    func findLeaders(array: [Int]) -> [Int] {
        guard let lastElement = array.last else {
            return array
        }

        var leaders = [lastElement]
        var maxSoFar = lastElement

        for element in array.dropLast().reversed() {
            if element > maxSoFar {
                maxSoFar = element
                leaders.append(element)
            }
        }
        
        return leaders.reversed()
    }
}

/*
 // Dry run:
 leaders = [2] => [2, 3] => [2, 3, 5]
 maxSoFar = 2 => 3 => 5
 
 return [5, 3, 2]
 
 */
