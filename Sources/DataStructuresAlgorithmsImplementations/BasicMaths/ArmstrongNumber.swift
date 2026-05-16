//
//  ArmstrongNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 16/05/26.
//

import Foundation

class ArmstrongNumber {
    /// Check if the Number is Armstrong
    /// https://takeuforward.org/plus/dsa/problems/check-if-the-number-if-armstrong
    func isArmstrongNumber(number: Int) -> Bool {
        guard number != 0 else {
            return true
        }

        guard number > 0 else {
            return false
        }
    
        var currentNumber = number
        let noOfDigits = Int(ceil(log10(Double(number))))
        var cubeSum = 0
        
        while currentNumber > 0 {
            let lastDigit = currentNumber % 10
            cubeSum += Int(pow(Double(lastDigit), Double(noOfDigits)))
            currentNumber = currentNumber / 10
        }
                
        return cubeSum == number
        
    }
    
}
