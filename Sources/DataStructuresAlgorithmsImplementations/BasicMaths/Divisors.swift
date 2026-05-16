//
//  GCD.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

class Divisors {
    /// Divisors of a Number
    /// https://takeuforward.org/plus/dsa/problems/divisors-of-a-number
    func listDivisors(number: Int) -> [Int] {
        guard number > 0 else {
            return []
        }
        
        var divisors = [Int]()
        var reversedRemainingDivisors = [Int]()
        
        var i = 1
        while i * i <= number {
            if number % i == 0 {
                divisors.append(i)
                
                let quotient = number / i
                if quotient != i {
                    reversedRemainingDivisors.append(quotient)
                }
            }
            
            i += 1
        }
        
        return divisors + reversedRemainingDivisors.reversed()
    }
}

