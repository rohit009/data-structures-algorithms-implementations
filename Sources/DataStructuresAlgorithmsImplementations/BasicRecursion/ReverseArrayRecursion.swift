//
//  ReverseArray.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 30/06/26.
//

class ReverseArrayRecursion {
    func reverseArray(_ array: [Int]) -> [Int] {
        guard array.count > 1 else {
            return array
        }

        var reversedArray = array
        reverseArrayRecursive(&reversedArray, startIndex: 0, endIndex: reversedArray.count - 1)
        
        return reversedArray
    }
    
    func reverseArrayRecursive(_ array: inout [Int], startIndex: Int, endIndex: Int) {
        guard startIndex < endIndex else {
            return
        }
        
        array.swapAt(startIndex, endIndex)
        reverseArrayRecursive(&array, startIndex: startIndex + 1, endIndex: endIndex - 1)
    }
}
