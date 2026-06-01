//
//  ReverseString.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 27/05/26.
//

class ReverseString {
    func performReverse(chars: inout [Character]) {
        guard chars.count > 1 else {
            return
        }
        
        var startIndex = 0
        var endIndex = chars.count - 1
        while startIndex < endIndex {
            chars.swapAt(startIndex, endIndex)
            
            startIndex += 1
            endIndex -= 1
        }
    }
}
