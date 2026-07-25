//
//  IntersectionOfTwoSortedArrays.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 25/07/26.
//

/// **Intersection of two sorted arrays**
/// Given two sorted arrays, nums1 and nums2, return an array containing the intersection of these
/// two arrays. Each element in the result must appear as many times as it appears in both arrays;
/// that is, if an element appears x times in nums1 and y times in nums2, it should appear min(x, y)
/// times in the result.
///
/// The intersection of two arrays is an array where all values are present in both arrays.
///
/// Example 2
/// - Input: nums1 = [1, 2, 2, 3, 3, 3], nums2 = [2, 3, 3, 4, 5, 7]
/// - Output: [2, 3, 3]
/// - Explanation:
///     - The element 2 appears in both arrays only one time.
///     - The element 3 appears in both arrays two times so we add element 3 equal to its number of
///     occurrences.
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/intersection-of-two-sorted-arrays?subject=dsa&approach=brute
class IntersectionOfTwoSortedArrays {

    func findIntersection(nums1: [Int], nums2: [Int]) -> [Int] {
        guard !nums1.isEmpty && !nums2.isEmpty else {
            return []
        }
        
        var index1 = 0
        var index2 = 0
        var intersection = [Int]()
        
        while index1 < nums1.count && index2 < nums2.count {
            if nums1[index1] == nums2[index2] {
                intersection.append(nums1[index1])
                index1 += 1
                index2 += 1
            } else if nums1[index1] < nums2[index2] {
                index1 += 1
            } else if nums1[index1] > nums2[index2] {
                index2 += 1
            }
        }
        
        return intersection
    }
}
