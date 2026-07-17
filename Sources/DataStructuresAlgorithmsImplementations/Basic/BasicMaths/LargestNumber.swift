//
//  LargestNumber.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 06/05/26.
//

class LargestNumber {
    /*
     Return the Largest Digit in a Number
     */
    func findLargest(number: Int) -> Int {
        guard number != 0 else { return 0 }

        var currentNumber = abs(number)
        var maxNumber = 0
        
        while currentNumber > 0 {
            let lastDigit = currentNumber % 10
            maxNumber = lastDigit > maxNumber ? lastDigit : maxNumber
            currentNumber = currentNumber / 10
        }
                
        return maxNumber
    }
}

