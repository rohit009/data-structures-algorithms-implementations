//
//  SumOfFirstNNumbers.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 01/06/26.
//

class SumOfFirstNNumbers {
    /// Sum of First N Numbers
    /// https://takeuforward.org/plus/dsa/problems/sum-of-first-n-numbers
    func calculateSum(n: Int) -> Int {
        if n <= 0 {
            return 0
        }
        
        let sum = n + calculateSum(n: n-1)
        return sum
    }
}
