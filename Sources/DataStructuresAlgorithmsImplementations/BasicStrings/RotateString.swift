//
//  RotateString.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 31/05/26.
//

class RotateString {
    func isRotatedString(string: String, goal: String) -> Bool {
        guard string.count == goal.count else {
            return false
        }
        
        guard string != goal else {
            return true
        }
        
        for i in 1..<string.count {
            let rotatedString = string.suffix(string.count - i) + string.prefix(i)
            if rotatedString == goal {
                return true
            }
        }
        
        return false
    }
}
