//
//  SecondHighestOccurringElement.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 26/05/26.
//

class SecondHighestOccurringElement {
    
    /// Second Highest Occurring Element
    /// https://takeuforward.org/plus/dsa/problems/second-highest-occurring-element
    func calculateSecondHighestElement(numbers: [Int]) -> Int {
        guard !numbers.isEmpty else {
            return -1
        }
        
        guard numbers.count > 1 else {
            return -1
        }
        
        let maxNumber = findMaxNumber(numbers: numbers)
        let frequencyArray = createFrequencyArray(numbers: numbers, maxNumber: maxNumber)
        
        var highestNumber = Int.min
        var highestFrequency = Int.min
        var secondHighestNumber = Int.min
        var secondHighestFrequency = Int.min
        
        for (index, frequency) in frequencyArray.enumerated() {
            guard frequency > 0 else {
                continue
            }

            if frequency > highestFrequency {
                secondHighestFrequency = highestFrequency
                secondHighestNumber = highestNumber
                
                highestFrequency = frequency
                highestNumber = index
            } else if frequency != highestFrequency && frequency > secondHighestFrequency {
                secondHighestFrequency = frequency
                secondHighestNumber = index
            }
        }
        
        return secondHighestNumber == Int.min ? -1 : secondHighestNumber
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
    
    private func createFrequencyArray(numbers: [Int], maxNumber: Int) -> [Int] {
        var frequencyArray = [Int](repeating: 0, count: maxNumber + 1)
        for element in numbers {
            frequencyArray[element] += 1
        }
        
        return frequencyArray
    }
}
