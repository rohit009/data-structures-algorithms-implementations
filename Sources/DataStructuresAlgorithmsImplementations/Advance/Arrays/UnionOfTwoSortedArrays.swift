//
//  UnionOfTwoSortedArrays.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 23/07/26.
//

import Foundation

/// **Union of two sorted arrays**
/// Given two sorted arrays nums1 and nums2, return an array that contains the union of these two
/// arrays. The elements in the union must be in ascending order.
///
/// The union of two arrays is an array where all values are distinct and are present in either the
/// first array, the second array, or both.
///
/// Example 1
/// - Input: nums1 = [1, 2, 3, 4, 5], nums2 = [1, 2, 7]
/// - Output: [1, 2, 3, 4, 5, 7]
/// - Explanation: The elements 1, 2 are common to both, 3, 4, 5 are from nums1 and 7 is from nums2.
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/union-of-two-sorted-arrays?subject=dsa&approach=optimal-ii
class UnionOfTwoSortedArrays {

    /// Better approach: Compares only the last element of resultant array for uniqueness.
    func findUnion(array1: [Int], array2: [Int]) -> [Int] {
        var i = 0
        var j = 0
        var resultantArray = [Int]()
        
        func appendIfUnique(_ element: Int) {
            if resultantArray.isEmpty || resultantArray.last != element {
                resultantArray.append(element)
            }
        }
        
        while i < array1.count && j < array2.count {
            let element1 = array1[i]
            let element2 = array2[j]
            
            if element1 < element2 {
                appendIfUnique(element1)
                
                i += 1
            } else if element1 > element2 {
                appendIfUnique(element2)
                
                j += 1
            } else {  // Equal
                appendIfUnique(element1)
                
                i += 1
                j += 1
            }
        }
        
        while i < array1.count {
            appendIfUnique(array1[i])
            
            i += 1
            
        }
        
        while j < array2.count {
            appendIfUnique(array2[j])
            
            j += 1
        }
        
        return resultantArray
    }
    
    
//    /// Brute force: using a Dictionary (Map) for frequency tracking.
//    func findUnion(array1: [Int], array2: [Int]) -> [Int] {
//        var i = 0
//        var j = 0
//        var resultantArray = [Int]()
//        var frequencyTracker = Dictionary<Int, Int?>()
//        
//        while i < array1.count && j < array2.count {
//            let element1 = array1[i]
//            let element2 = array2[j]
//
//            if element1 < element2 {
//                if frequencyTracker[element1] == nil {
//                    resultantArray.append(element1)
//
//                    frequencyTracker[element1] = 1
//                }
//
//                i += 1
//            } else if element1 > element2 {
//                if frequencyTracker[element2] == nil {
//                    resultantArray.append(element2)
//
//                    frequencyTracker[element2] = 1
//                }
//
//                j += 1
//            } else {  // Equal
//                if frequencyTracker[element1] == nil {
//                    resultantArray.append(element1)
//
//                    frequencyTracker[element1] = 1
//                }
//
//                i += 1
//                j += 1
//            }
//        }
//     
//        while i < array1.count {
//            let element1 = array1[i]
//            
//            if frequencyTracker[element1] == nil {
//                resultantArray.append(element1)
//
//                frequencyTracker[element1] = 1
//            }
//
//            i += 1
//
//        }
//            
//        while j < array2.count {
//            let element2 = array2[j]
//
//            if frequencyTracker[element2] == nil {
//                resultantArray.append(element2)
//
//                frequencyTracker[element2] = 1
//            }
//
//            j += 1
//        }
//
//        return resultantArray
//    }
}
