//
//  CountOfOddNumbers.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 18/05/26.
//

class CountOfOddNumbers {
    
    /// Count of odd numbers in array
    /// https://takeuforward.org/plus/dsa/problems/count-of-odd-numbers-in-array
    func findOddNumbersCount(array: [Int]) -> Int {
        array.reduce(0) { partialResult, num in
            if isOdd(number: num) {
                return partialResult + 1
            } else {
                return partialResult
            }
        }
    }
    
    func isOdd(number: Int) -> Bool {
        return number % 2 != 0
    }
}
