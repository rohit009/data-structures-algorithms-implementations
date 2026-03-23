//
//  SumOfFirstLastElement.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 15/03/26.
//

class SumOfFirstLastElement {
    
    func performFirstAndLastAddition(array: [Int]) -> Int {
        guard let first = array.first, let last = array.last else {
            return 0
        }
        
        return first + last
    }
}
