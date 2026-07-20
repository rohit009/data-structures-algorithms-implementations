//
//  LeftRotateArray.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 20/07/26.
//

/// Left Rotate Array by K Places
/// https://takeuforward.org/plus/dsa/problems/left-rotate-array?subject=dsa
class LeftRotateArray {
    
    /// Using "Reversal algorithm" which takes O(1) space complexity and O(N) time complexity.
    func rotateLeft(array: inout [Int], byPlaces k: Int) {
        guard !array.isEmpty else {
            return
        }
        
        let rotation = k % array.count
        guard rotation > 0 else {
            return
        }

        reverseElements(array: &array, startIndex: 0, endIndex: rotation - 1)
        reverseElements(array: &array, startIndex: rotation, endIndex: array.count - 1)
        reverseElements(array: &array, startIndex: 0, endIndex: array.count - 1)
    }
    
    private func reverseElements(array: inout [Int], startIndex: Int, endIndex: Int) {
        var start = startIndex
        var end = endIndex
        
        while start < end {
            array.swapAt(start, end)

            start += 1
            end -= 1
        }
    }
    
    /*
     Dry run:
     Input: nums = [1, 2, 3, 4, 5, 6], k = 2
     Expected output: nums = [3, 4, 5, 6, 1, 2]
     
     rotation = 2
     
     nums = [1, 2, 3, 4, 5, 6]
        -> [2, 1, 3, 4, 5, 6]
     
     nums = [2, 1, 3, 4, 5, 6]
        -> [2, 1, 6, 4, 5, 3]
        -> [2, 1, 6, 5, 4, 3]
     
     nums = [2, 1, 6, 5, 4, 3]
        -> [3, 4, 5, 6, 1, 2]
     
    */

    
/*
    /// Brute force:
    func rotateLeft(array: inout [Int], byPlaces k: Int) {
        guard !array.isEmpty else {
            return
        }
        
        let rotation = k % array.count
        guard rotation > 0 else {
            return
        }

        let leftArray = array[rotation..<array.count]
        let rightArray = array[0..<rotation]
        
        var index = 0
        for element in leftArray + rightArray {
            array[index] = element
            index += 1
        }
    }
*/

}
