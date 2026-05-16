//
//  GCD.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

class LCM {
    /// LCM of two numbers
    /// https://takeuforward.org/plus/dsa/problems/lcm-of-two-numbers
    func findLCM(number1: Int, number2: Int) -> Int {
        guard number1 > 0 && number2 > 0 else {
            return 0
        }
        
        if number1 == number2 {
            return number1
        }
        
        let GCDfinder = GCD()
        let GCD = GCDfinder.findGCD(number1: number1, number2: number2)

        // Formula: LCM(a, b) = (a * b) / GCD(a, b)
        // To prevent integer overflow, we can rewrite it as:
        // LCM(a, b) = (a / GCD(a, b)) * b
        return (number1 / GCD) * number2
    }
}

