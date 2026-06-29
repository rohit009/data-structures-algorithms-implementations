//
//  Factorial.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 01/06/26.
//

class Factorial {
    /// Factorial of a Given Number
    /// https://takeuforward.org/plus/dsa/problems/factorial-of-a-given-number-ii
    func calculateFactorial(n: Int) -> Int64 {
        if n <= 0 {
            return 1
        }
        
        let factorialResult = Int64(n) * calculateFactorial(n: n-1)
        
        return factorialResult
    }
}
