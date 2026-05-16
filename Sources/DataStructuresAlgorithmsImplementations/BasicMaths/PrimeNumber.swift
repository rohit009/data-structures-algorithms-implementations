//
//  ReverseNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

import Foundation

class PrimeNumber {
    /// Check for Prime Number
    /// https://takeuforward.org/plus/dsa/problems/check-for-prime-number
    func isPrime(number: Int) -> Bool {
        guard number > 1 else {
            return false
        }
        
        let squareRoot = Int(Double(number).squareRoot())
        guard squareRoot >= 2 else {
            return true // 2 and 3 are prime numbers.
        }

        for i in 2...squareRoot {
            if number % i == 0 {
                return false
            }
        }
        
        return true
    }
}
