//
//  LargestOddNumberInString.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 28/05/26.
//

class LargestOddNumberInString {
    /// Largest Odd Number in a String
    /// https://takeuforward.org/plus/dsa/problems/largest-odd-number-in-a-string
    func findLargestOddNumber(string: String) -> String {
        guard !string.isEmpty else {
            return ""
        }

        var endIndex = string.index(before: string.endIndex)
        var oddNumberIndex: String.Index? = nil

        while true {
            if let number = string[endIndex].wholeNumberValue, number % 2 != 0 {
                oddNumberIndex = endIndex
                break
            }

            if endIndex == string.startIndex {
                break
            }

            endIndex = string.index(before: endIndex)
        }
        
        guard let oddNumberIndex else {
            return ""
        }
        
        
        var startIndex = string.startIndex
        while startIndex < string.endIndex {
            if string[startIndex] != Character("0") {
                break
            }
            
            startIndex = string.index(after: startIndex)
        }
        
        if startIndex <= oddNumberIndex {
            return String(string[startIndex...oddNumberIndex])
        } else {
            return ""
        }
    }
}
