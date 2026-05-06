//
//  CountOddDigitsInNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

class CountOddDigitsInNumber {
    /*
     Count number of odd digits in a number
     You are given an integer n. You need to return the number of odd digits present in the number.
     The number will have no leading zeroes, except when the number is 0 itself.
     
     Example:
     Input: n = 25
     Output: 1
     Explanation: The only odd digit in 25 is 5.
     */
    func countOddDigits(number: Int) -> Int {
        guard number != 0 else { return 0 }

        var oddDigitsCount = 0
        var currentNumber = abs(number)
        
        while currentNumber > 0 {
            let lastDigit = currentNumber % 10
            if lastDigit % 2 != 0 {
                oddDigitsCount += 1
            }

            currentNumber = currentNumber / 10
        }
        
        return oddDigitsCount
    }
}

