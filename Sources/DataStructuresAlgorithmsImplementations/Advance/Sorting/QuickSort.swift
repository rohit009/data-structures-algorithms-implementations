//
//  QuickSort.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 19/07/26.
//

class QuickSort {
    func sortNumbers(_ numbers: [Int]) -> [Int] {
        guard numbers.count > 1 else {
            return numbers
        }
        
        var outputNumbers = numbers
        quickSort(array: &outputNumbers, low: 0, high: outputNumbers.count - 1)
        
        return outputNumbers
    }
    
    private func quickSort(array: inout [Int], low: Int, high: Int) {
        guard low < high else {
            return
        }
        
        let pivot = partitionAndFindPivot(array: &array, low: low, high: high)
        quickSort(array: &array, low: low, high: pivot - 1)
        quickSort(array: &array, low: pivot + 1, high: high)
    }
    
    private func partitionAndFindPivot(array: inout [Int], low: Int, high: Int) -> Int {
        let pivotIndex = low
        var i = low
        var j = high
        
        while i < j {
            while array[i] <= array[pivotIndex] && i < high {
                i += 1
            }
            
            while array[j] > array[pivotIndex] && j > low {
                j -= 1
            }
            
            if i < j {
                array.swapAt(i, j)
            }
        }
        
        array.swapAt(pivotIndex, j)

        return j
    }
}
