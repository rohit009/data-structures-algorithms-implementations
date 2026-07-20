//
//  SecondLargestElement.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 20/07/26.
//

class SecondLargestElement {
    func findSecondLargestElement(_ array: [Int]) -> Int {
        guard array.count > 1 else {
            return -1
        }
        
        var largest = array[0] > array[1] ? array[0] : array[1]

        var secondLargest = array[0] < array[1] ? array[0] : array[1]
        secondLargest = array[0] == array[1] ? Int.min : secondLargest
        
        for element in array {
            if element > largest {
                secondLargest = largest
                largest = element
            } else if element != largest && element > secondLargest {
                secondLargest = element
            }
        }
        
        if secondLargest != Int.min {
            return secondLargest
        }
        
        return -1
    }
}
