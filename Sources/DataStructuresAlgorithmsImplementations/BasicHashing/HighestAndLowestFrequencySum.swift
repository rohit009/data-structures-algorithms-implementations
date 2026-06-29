//
//  HighestAndLowestFrequencySum.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 26/05/26.
//

class HighestAndLowestFrequencySum {
    
    /// Sum of Highest and Lowest Frequency
    /// https://takeuforward.org/plus/dsa/problems/sum-of-highest-and-lowest-frequency
    func calculateFrequencySum(numbers: [Int]) -> Int {
        guard !numbers.isEmpty else {
            return 0
        }
        
        guard numbers.count > 1 else {
            return 2
        }
        
        let maxNumber = findMaxNumber(numbers: numbers)
        let frequencyArray = createFrequencyArray(numbers: numbers, maxNumber: maxNumber)
        
        var maxFrequency = Int.min
        var minFrequency = Int.max
        for frequency in frequencyArray {
            if frequency > maxFrequency {
                maxFrequency = frequency
            }
            
            if frequency > 0 && frequency < minFrequency {
                minFrequency = frequency
            }
        }

        return maxFrequency + minFrequency
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
