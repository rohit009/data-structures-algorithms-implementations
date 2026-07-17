//
//  SumOfArray.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 29/06/26.
//

class SumOfArray {

    /// Sum of Array Elements II
    /// https://takeuforward.org/plus/dsa/problems/sum-of-array-elements-ii?subject=dsa
    func calculate(numbers: [Int]) -> Int {
        calculateSlice(numbers: numbers[...])
    }
    
    func calculateSlice(numbers: ArraySlice<Int>) -> Int {
        guard let firstNumber = numbers.first else {
            return 0
        }
        
        return firstNumber + calculateSlice(numbers: numbers.dropFirst())
    }
}
