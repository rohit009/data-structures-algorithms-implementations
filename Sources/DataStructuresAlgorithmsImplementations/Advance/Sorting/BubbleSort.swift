//
//  BubbleSort.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 17/07/26.
//

class BubbleSort {
    func sortNumbers(_ numbers: [Int]) -> [Int] {
        guard numbers.count > 1 else {
            return numbers
        }
        
        var outputNumbers = numbers
        for index in (0..<outputNumbers.count).reversed() {
            var didSwap = false

            for j in 0..<index {
                if outputNumbers[j] > outputNumbers[j+1] {
                    outputNumbers.swapAt(j, j+1)
                    didSwap = true
                }
            }
            
            if !didSwap {
                break
            }
        }
        
        return outputNumbers
    }
}
