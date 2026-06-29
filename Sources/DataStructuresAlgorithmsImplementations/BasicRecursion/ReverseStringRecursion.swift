//
//  ReverseString.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 29/06/26.
//

class ReverseStringRecursion {
    /// Reverse a String I
    /// https://takeuforward.org/plus/dsa/problems/reverse-a-string-i?subject=dsa
    func reverseString(string: String) -> String {
        var chars = Array(string)
        reverseStringRecursive(chars: &chars, startIndex: 0, endIndex: chars.count - 1)
        return String(chars)
    }
    
    func reverseStringRecursive(chars: inout [Character], startIndex: Int, endIndex: Int) {
        guard startIndex < endIndex else {
            return
        }
        
        chars.swapAt(startIndex, endIndex)
        reverseStringRecursive(chars: &chars, startIndex: startIndex + 1, endIndex: endIndex - 1)
    }
}
