//
//  SumOfFirstLastElement.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 15/03/26.
//

class TriangleStarPattern {
    /**
    Given an integer n. You need to recreate the pattern given below for any value of N. Let's say
     for N = 5, the pattern should look like as below:

        *
       ***
      *****
     *******
    *********


    Print the pattern in the function given to you.
    **/
    func createPattern(numberOfLines: Int) {
        guard numberOfLines > 0 else {
            return
        }

        for i in 1...numberOfLines {
            for _ in 0..<(numberOfLines - i) {
                print(" ", terminator: "")
            }
            
            for _ in 0..<((i * 2) - 1) {
                print("*", terminator: "")
            }
            
            for _ in 0..<(numberOfLines - i) {
                print(" ", terminator: "")
            }
            
            print("")
        }
    }
}


