//
//  File.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 29/06/26.
//

import Foundation

class PalindromeRecursion {
    func isPalindrome(_ string: String) -> Bool {
        let chars = Array(string)
        return comparePalindromeRecursively(chars: chars, startIndex: 0, endIndex: chars.count - 1)
    }
    
    
    func comparePalindromeRecursively(chars: [Character], startIndex: Int, endIndex: Int) -> Bool {
        guard startIndex < endIndex else {
            return true
        }
        
        return (chars[startIndex] == chars[endIndex])
            && comparePalindromeRecursively(
                chars: chars,
                startIndex: startIndex + 1,
                endIndex: endIndex - 1
               )
    }
}
