//
//  SumOfAllElement.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 18/05/26.
//

class SumOfAllElement {
    
    /// Sum of Array Elements
    /// https://takeuforward.org/plus/dsa/problems/sum-of-array-elements
    func calculateSum(array: [Int]) -> Int {
        guard !array.isEmpty else {
            return 0
        }
        
        var sum = 0
        for i in 0..<array.count {
            sum += array[i]
        }
        
        return sum
    }
}
