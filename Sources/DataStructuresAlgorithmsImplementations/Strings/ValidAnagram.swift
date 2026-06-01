//
//  ValidAnagram.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 31/05/26.
//

class ValidAnagram {
    func isValidAnagram(string1: String, string2: String) -> Bool {
        guard string1.count == string2.count else {
            return false
        }
        
        var frequencies = [Int](repeating: 0, count: 256)
        for (char1, char2) in zip(string1, string2) {
            guard let ascii1 = char1.asciiValue, let ascii2 = char2.asciiValue else {
                return false
            }

            frequencies[Int(ascii1)] += 1
            frequencies[Int(ascii2)] -= 1
        }
        
        for frequency in frequencies {
            if frequency != 0 {
                return false
            }
        }
        
        return true
    }
}
