//
//  HighestOccurringElement.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 15/03/26.
//

class HighestOccurringElement {
    
    /// Highest Occurring Element in an Array
    /// https://takeuforward.org/plus/dsa/problems/highest-occurring-element-in-an-array
    func findHighestOccurringElement(numbers: [Int]) -> Int {
        guard !numbers.isEmpty else {
            return 0
        }
        
        guard numbers.count > 1 else {
            return numbers[0]
        }
        
        let maxNumber = findMaxNumber(numbers: numbers)

        var frequencyArray = [Int](repeating: 0, count: maxNumber + 1)
        for element in numbers {
            frequencyArray[element] += 1
        }
        
        var maxOccurringElement = Int.min
        var maxFrequency = Int.min
        for (index, frequency) in frequencyArray.enumerated() {
            if frequency > maxFrequency {
                maxFrequency = frequency
                maxOccurringElement = index
            }
        }

        return maxOccurringElement
    }
    
    
    private func findMaxNumber(numbers: [Int]) -> Int {
        var maxNumber = Int.min
        for num in numbers {
            if num > maxNumber {
                maxNumber = num
            }
        }
        
        return maxNumber
    }
}
