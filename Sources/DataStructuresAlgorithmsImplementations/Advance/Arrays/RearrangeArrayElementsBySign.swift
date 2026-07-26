//
//  RearrangeArrayElementsBySign.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 26/07/26.
//

/// **Rearrange array elements by sign**
/// Given an integer array nums of even length consisting of an equal number of positive and
/// negative integers. Return the answer array in such a way that the given conditions are met:
/// - Every consecutive pair of integers have opposite signs.
/// - For all integers with the same sign, the order in which they were present in nums is preserved.
/// - The rearranged array begins with a positive integer.
///
/// Example 1
/// - Input : nums = [2, 4, 5, -1, -3, -4]
/// - Output : [2, -1, 4, -3, 5, -4]
/// - Explanation: The positive number 2, 4, 5 maintain their relative positions and -1, -3, -4
/// maintain their relative positions
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/rearrange-array-elements-by-sign?subject=dsa&approach=optimal
class RearrangeArrayElementsBySign {
    
    
    /// 2nd solution: Simpler solution with less iterations but same time complexity O(N) and space
    /// complexity O(N) on high level. But in some cases improves the time complexity for large
    /// arrays because this solution does not require dynamically increasing array. It takes fixed
    /// size array so the occasional O(n) operation of `append(_:)` is skipped.
    func rearrangeElements(array: [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }
        
        var result = [Int](repeating: 0, count: array.count)
        var positivePointer = 0
        var negativePointer = 1
        
        for i in 0..<array.count {
            if array[i] >= 0 {
                result[positivePointer] = array[i]
                positivePointer += 2
            } else {  // negative
                result[negativePointer] = array[i]
                negativePointer += 2
            }
        }
        
        return result
    }

//    /// 1st solution: Has complex if conditions.
//    func rearrangeElements(array: [Int]) -> [Int] {
//        guard !array.isEmpty else {
//            return array
//        }
//        
//        var result = [Int]()
//        
//        var positivePointer = 0
//        var negativePointer = 0
//        
//        while positivePointer < array.count && negativePointer < array.count {
//            if array[positivePointer] >= 0 && array[negativePointer] < 0 {
//                result.append(array[positivePointer])
//                result.append(array[negativePointer])
//                
//                positivePointer += 1
//                negativePointer += 1
//            } else if array[positivePointer] < 0 && array[negativePointer] >= 0 {
//                positivePointer += 1
//                negativePointer += 1
//            } else if array[positivePointer] < 0 {
//                positivePointer += 1
//            } else if array[negativePointer] >= 0 {
//                negativePointer += 1
//            }
//        }
//        
//        return result
//    }
}




/*
 Dry run (1st solution:
 Input: [1, -1, -3, -4, 2, 3]
 
 1.
 result = []
 positivePointer = 0
 negativePointer = 0 -> 1
 
 2.
 var result = [] -> [1, -1]
 var positivePointer = 0 -> 1
 var negativePointer = 1 -> 2
 
 3.
 var result = [1, -1]
 var positivePointer = 1 -> 2
 var negativePointer = 2
 
 4.
 var result = [1, -1]
 var positivePointer = 2 -> 3
 var negativePointer = 2
 
 5.
 var result = [1, -1]
 var positivePointer = 3 -> 4
 var negativePointer = 2
 
 6.
 var result = [1, -1] -> [1, -1, 2, -3]
 var positivePointer = 4 -> 5
 var negativePointer = 2 -> 3
 
 7.
 var result = [1, -1, 2, -3] -> [1, -1, 2, -3, 3, -4]
 var positivePointer = 5 -> 6
 var negativePointer = 3 -> 4
 
 While loop - End
 
 -> return [1, -1, 2, -3, 3, -4]
 */
