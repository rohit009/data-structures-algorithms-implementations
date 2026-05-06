//
//  FactorialCalculator.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

class FactorialCalculator {
     // Factorial of a given number
    func calculateFactorial(number: Int) -> Int? {
        if number < 0 {
            return nil
        } else if number == 0 {
            return 1
        }

        var factorial = 1
        for i in 1...number {
            factorial *= i
        }
        
        return factorial
    }
}
