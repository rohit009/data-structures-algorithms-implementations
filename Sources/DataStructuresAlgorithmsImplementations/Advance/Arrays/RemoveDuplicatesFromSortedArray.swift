//
//  RemoveDuplicatesFromSortedArray.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 22/07/26.
//

/// **Remove duplicates from sorted array**
///
/// Given an integer array nums sorted in non-decreasing order, remove all duplicates in-place so
/// that each unique element appears only once.
/// Return the number of unique elements in the array.
///
/// If the number of unique elements be k, then,
/// - Change the array nums such that the first k elements of nums contain the unique values in the
/// order that they were present originally.
/// - The remaining elements, as well as the size of the array does not matter in terms of
/// correctness.
/// - The driver code will assess correctness by printing and checking only the first k elements of
/// the modified array.
///
/// An array sorted in non-decreasing order is an array where every element to the right of an
/// element is either equal to or greater in value than that element.
///
/// Example 1
/// - Input: nums = [0, 0, 3, 3, 5, 6]
/// - Output: 4
/// - Explanation: Resulting array = [0, 3, 5, 6, _, _]
///     - There are 4 distinct elements in nums and the elements marked as _ can have any value.
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/remove-duplicates-from-sorted-array?subject=dsa
class RemoveDuplicatesFromSortedArray {

    func removeDuplicates(array: inout [Int]) -> Int {
        guard array.count != 0 else {
            return 0
        }

        guard array.count > 1 else {
            return 1
        }
        
        var insertIndex = 1
        for index in 1..<array.count {
            if array[index] != array[index-1] {
                array[insertIndex] = array[index]
                
                insertIndex += 1
            }
        }
        
        return insertIndex
    }
}

/*
 Dry run:
 [0, 0, 3, 3, 5, 6]
 ->
 [0, 0, 3, 3, 5, 6]
 index = 1
 insertIndex = 1
 => No change

 ->
 [0, 0, 3, 3, 5, 6]
 index = 2
 insertIndex = 1
 => Change:
    [0, 3, 3, 3, 5, 6]
    insertIndex = 1 => 2
 
 ->
 [0, 3, 3, 3, 5, 6]
 index = 3
 insertIndex = 2
 => No change
 
 ->
 [0, 3, 3, 3, 5, 6]
 index = 4
 insertIndex = 2
 => Change:
    [0, 3, 5, 3, 5, 6]
    insertIndex = 2 => 3
 
 ->
 [0, 3, 5, 3, 5, 6]
 index = 5
 insertIndex = 3
 => Change:
    [0, 3, 5, 6, 5, 6]
    insertIndex = 3 => 4

 => Output: [0, 3, 5, 6, 5, 6]
 
 
 */
