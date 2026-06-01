//
//  Palindrome.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 27/05/26.
//

class Palindrome {
    func isPalindrome(string: String, caseSensitive: Bool) -> Bool {
        guard string.count > 1 else {
            return true
        }
        
        let charsToCompare: [Character] = if caseSensitive {
            Array(string)
        } else {
            Array(string.lowercased())
        }
        
        var startIndex = 0
        var endIndex = charsToCompare.count - 1
        while startIndex < endIndex {
            if charsToCompare[startIndex] != charsToCompare[endIndex] {
                return false
            }
            
            startIndex += 1
            endIndex -= 1
        }
        
        return true
    }
    
    func isPalindromeWithStringIndex(string: String, caseSensitive: Bool) -> Bool {
        guard string.count > 1 else {
            return true
        }
        
        var startIndex = string.startIndex
        var endIndex = string.index(string.endIndex, offsetBy: -1)

        while startIndex < endIndex {
            if caseSensitive {
                if string[startIndex] != string[endIndex] {
                    return false
                }
            } else {
                if string[startIndex].lowercased() != string[endIndex].lowercased() {
                    return false
                }
            }
            
            startIndex = string.index(after: startIndex)
            endIndex = string.index(endIndex, offsetBy: -1)
        }
        
        return true
    }
}
