//
//  CountOfOddNumbers.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 18/05/26.
//

class ReverseArray {
    /// Reverse an array
    /// https://takeuforward.org/plus/dsa/problems/reverse-an-array
    func reverseArray(numbers: inout [Int]) {
        guard numbers.count >= 2 else {
            return
        }
        
        var startIndex = 0
        var endIndex = numbers.endIndex - 1
        while startIndex < endIndex {
            let temp = numbers[startIndex]
            numbers[startIndex] = numbers[endIndex]
            numbers[endIndex] = temp

            // Alternate for swapping:
            // numbers.swapAt(startIndex, endIndex)

            startIndex += 1
            endIndex -= 1
        }
    }
}
