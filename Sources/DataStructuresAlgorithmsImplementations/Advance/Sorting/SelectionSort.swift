//
//  SelectionSort.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 17/07/26.
//

class SelectionSort {
    func sortNumbers(_ numbers: [Int]) -> [Int] {
        guard numbers.count > 1 else {
            return numbers
        }

        var outputNumbers = numbers
        for i in 0..<numbers.count {
            var minIndex = i
            for j in i+1..<numbers.count {
                if outputNumbers[j] < outputNumbers[minIndex] {
                    minIndex = j
                }
            }
            
            outputNumbers.swapAt(minIndex, i)
        }
        
        return outputNumbers
    }
}
