//
//  MoveZerosEnd.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 22/07/26.
//

/// **Move Zeros to End**
///
/// Given an integer array nums, move all the 0's to the end of the array. The relative order
/// of the other elements must remain the same.
/// This must be done in place, without making a copy of the array.
///
/// Example 1
/// - Input: nums = [0, 1, 4, 0, 5, 2]
/// - Output: [1, 4, 5, 2, 0, 0]
/// - Explanation: Both the zeroes are moved to the end and the order of the other elements
/// stay the same
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/move-zeros-to-end?subject=dsa
class MoveZerosEnd {

    /// Optimized version because its time complexity is: O(N)
    func moveZeros(array: inout [Int]) {
        guard !array.isEmpty else {
            return
        }
        
        var insertIndex = 0
        for index in 0..<array.count {
            if array[index] != 0 {
                array.swapAt(insertIndex, index)
                insertIndex += 1
            }
        }
    }

    /*
     Dry run:

     [1, 0, 2, 0]
     ->
     insertIndex = 0
     currentIndex = 0
     [1, 0, 2, 0]
     ->
     insertIndex = 1
     currentIndex = 1
     [1, 0, 2, 0]
     ->
     insertIndex = 1 => 2
     currentIndex = 2
     [1, 2, 0, 0]
     ->
     insertIndex = 2
     currentIndex = 3
     [1, 2, 0, 0]
     ->
     Output: [1, 2, 0, 0]
     
     */

//    /// Brute force: Because its time complexity is: O(N).
//    func moveZeros(array: inout [Int]) {
//        guard !array.isEmpty else {
//            return
//        }
//        
//        var currentLast = array.count - 1
//        for index in (0..<array.count-1).reversed() {
//            guard array[index] == 0 else {
//                continue
//            }
//
//            for j in index..<currentLast {
//                array[j] = array[j+1]
//            }
//            array[currentLast] = 0
//            currentLast -= 1
//        }
//    }
}
