//
//  CountDigitsOfNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

import Foundation

class CountDigitsOfNumber {
    /*
     Count all Digits of a Number
     You are given an integer n. You need to return the number of digits in the number.
     The number will have no leading zeroes, except when the number is 0 itself.
     
     Example:
     Input: n = 14
     Output: 2
     Explanation: There are 2 digits in 14.
     */
    func countDigits(number: Int) -> Int {
        guard number != 0 else { return 1 }

        var count = 0
        var currentNumber = abs(number)
        
        while currentNumber > 0 {
            currentNumber = currentNumber / 10
            count += 1
        }
        
        return count
    }

    
// Alternate approach:
/* 
    func countDigits(number: Int) -> Int {
        guard number != 0 else { return 1 }
        
        let currentNumber = abs(number)
        
        let count = Int(log10(Double(currentNumber))) + 1
        
        return count
    }
 */
}
