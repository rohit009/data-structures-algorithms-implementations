//
//  ArmstrongNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import Foundation

class PerfectNumber {
    /// Check for Perfect Number
    /// https://takeuforward.org/plus/dsa/problems/check-for-perfect-number
    func isPerfectNumber(number: Int) -> Bool {
        guard number > 1 else {
            return false
        }
    
        var divisorSum = 1
        let squareRoot = Int(floor(sqrt(Double(number))))
        
        for i in 2...squareRoot {
            if number % i == 0 {
                divisorSum += i
                
                let quotient = number / i
                if quotient != i {
                    divisorSum += quotient
                }
            }
        }

        return divisorSum == number
    }
    
}
