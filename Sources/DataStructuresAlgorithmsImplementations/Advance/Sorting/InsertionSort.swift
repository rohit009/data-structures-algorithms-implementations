//
//  InsertionSort.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 18/07/26.
//

class InsertionSort {
    func sortNumbers(_ numbers: [Int]) -> [Int] {
        guard numbers.count > 1 else {
            return numbers
        }

        var outputNumbers = numbers
        
        for i in 0..<numbers.count {
            var j = i
            
            while j > 0 && outputNumbers[j-1] > outputNumbers[j] {
                outputNumbers.swapAt(j, j-1)
                
                j -= 1
            }
        }
        
        return outputNumbers
    }
}
