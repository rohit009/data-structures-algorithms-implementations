//
//  GCD.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

class GCD {
    /// GCD of Two Numbers
    /// https://takeuforward.org/plus/dsa/problems/gcd-of-two-numbers
    func findGCD(number1: Int, number2: Int) -> Int {
        guard number1 > 0 && number2 > 0 else {
            return 0
        }
        
        var currentNumber1 = number1
        var currentNumber2 = number2
        while currentNumber1 != 0 && currentNumber2 != 0 {
            if currentNumber1 > currentNumber2 {
                currentNumber1 = currentNumber1 % currentNumber2
            } else {
                currentNumber2 = currentNumber2 % currentNumber1
            }
        }
        
        return currentNumber1 == 0 ? currentNumber2 : currentNumber1
    }
}

