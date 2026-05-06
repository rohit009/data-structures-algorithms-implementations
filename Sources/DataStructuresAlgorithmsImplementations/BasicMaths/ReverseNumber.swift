//
//  ReverseNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

class ReverseNumber {
    /*
     Reverse a number
     You are given an integer n. Return the integer formed by placing the digits of n in reverse
     order.
     
     Example:
     Input: n = 123
     Output: 321
     Explanation: Reverse of 123 is 321.
     */
    func reverseNumber(number: Int) -> Int {
        if number == 0 {
            return 0
        } else if number > 0 {
            return reverseAbsoluteNumber(number: number)
        } else {
            return reverseAbsoluteNumber(number: abs(number)) * -1
        }
    }
    
    private func reverseAbsoluteNumber(number: Int) -> Int {
        var currentNumber = number
        var reverseNumber = 0
        
        while currentNumber > 0 {
            let lastDigit = currentNumber % 10
            reverseNumber = reverseNumber * 10 + lastDigit
            currentNumber = currentNumber / 10
        }
                
        return reverseNumber
    }
}

