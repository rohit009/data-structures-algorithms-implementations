//
//  ReverseNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

import Foundation

class CountOfPrimeNumbers {
    /// Count of Prime Numbers till N
    /// https://takeuforward.org/plus/dsa/problems/count-of-prime-numbers-till-n
    func findCountOfPrimeNumbers(upto number: Int) -> Int {
        guard number > 0 else {
            return 0
        }

        let primeNumberValidator = PrimeNumber()
        var count = 0

        for i in 1...number {
            if primeNumberValidator.isPrime(number: i) {
                count += 1
            }
        }

        return count
    }
}
