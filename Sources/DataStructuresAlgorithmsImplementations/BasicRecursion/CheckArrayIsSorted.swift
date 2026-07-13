//
//  CheckArrayIsSorted.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 13/07/26.
//

class CheckArrayIsSorted {
    /// Check if the Array is Sorted II
    /// https://takeuforward.org/plus/dsa/problems/check-if-the-array-is-sorted-ii?subject=dsa
    func isSorted(nums: [Int]) -> Bool {
        isSortedRecursive(nums: nums, currentIndex: 0)
    }
    
    func isSortedRecursive(nums: [Int], currentIndex: Int) -> Bool {
        let firstIndex = currentIndex
        let secondIndex = currentIndex + 1
        
        guard secondIndex < nums.count else {
            return true
        }
        
        if nums[firstIndex] <= nums[secondIndex] {
            return isSortedRecursive(nums: nums, currentIndex: currentIndex + 1)
        } else {
            return false
        }
    }
}
