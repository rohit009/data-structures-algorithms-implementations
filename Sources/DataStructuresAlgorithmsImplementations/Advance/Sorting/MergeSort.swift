//
//  MergeSort.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 18/07/26.
//

class MergeSort {
    func sortNumbers(_ numbers: [Int]) -> [Int] {
        guard numbers.count > 1 else {
            return numbers
        }
        
        var outputNumbers = numbers
        mergeSort(array: &outputNumbers, low: 0, high: outputNumbers.count - 1)
        
        return outputNumbers
    }
    
    private func mergeSort(array: inout [Int], low: Int, high: Int) {
        guard low < high else {
            return
        }
        
        let mid = (low + high) / 2
        mergeSort(array: &array, low: low, high: mid)
        mergeSort(array: &array, low: mid+1, high: high)
        merge(array: &array, low: low, mid: mid, high: high)
    }
    
    private func merge(array: inout [Int], low: Int, mid: Int, high: Int) {
        var temp = [Int]()
        var left = low
        var right = mid+1
        
        while left <= mid && right <= high {
            if array[left] <= array[right] {
                temp.append(array[left])
                left += 1
            } else {
                temp.append(array[right])
                right += 1
            }
        }
        
        while left <= mid {
            temp.append(array[left])
            left += 1
        }
        
        while right <= high {
            temp.append(array[right])
            right += 1
        }
        
        // Resetting the range of the resultant array with final sorted numbers.
        for i in low...high {
            array[i] = temp[i - low]
        }
    }
}
