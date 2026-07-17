//
//  FibonacciNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 13/07/26.
//

class FibonacciNumber {
    func fibonacciNumber(n: Int) -> Int {
        if n == 0 {
            return 0
        }
        
        if n == 1 {
            return 1
        }
        
        return fibonacciNumber(n: n - 1) + fibonacciNumber(n: n - 2)
    }
}
