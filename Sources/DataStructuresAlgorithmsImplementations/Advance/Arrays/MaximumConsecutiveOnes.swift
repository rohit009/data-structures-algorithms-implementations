//
//  MaximumConsecutiveOnes.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 20/07/26.
//

class MaximumConsecutiveOnes {

    /// Maximum Consecutive Ones
    /// https://takeuforward.org/plus/dsa/problems/maximum-consecutive-ones?subject=dsa
    func findMaximumConsecutiveOnes(_ array: [Int]) -> Int {
        guard !array.isEmpty else {
            return 0
        }
        
        var maximumConsecutiveOnes = 0
        var currentConsecutiveOnes = 0

        for element in array {
            if element == 1 {
                currentConsecutiveOnes += 1
                maximumConsecutiveOnes = max(maximumConsecutiveOnes, currentConsecutiveOnes)
            } else {
                currentConsecutiveOnes = 0
            }
        }

        return maximumConsecutiveOnes
    }
}

/* Dry run:
 [1, 1, 0, 0, 1, 1, 1, 0]
 
 maximumConsecutiveOnes = 0
 currentConsecutiveOnes = 1
 
 maximumConsecutiveOnes = 0
 currentConsecutiveOnes = 2
 
 maximumConsecutiveOnes = 2
 currentConsecutiveOnes = 0
 
 maximumConsecutiveOnes = 2
 currentConsecutiveOnes = 0
 
 maximumConsecutiveOnes = 2
 currentConsecutiveOnes = 1
 
 maximumConsecutiveOnes = 2
 currentConsecutiveOnes = 2
 
 maximumConsecutiveOnes = 2
 currentConsecutiveOnes = 3
 
 maximumConsecutiveOnes = 3
 currentConsecutiveOnes = 0
 
 */
