//
//  Untitled.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 23/03/26.
//


class UpsideDownRightAngleTriangleStarPattern {
    
    /**
     * Pattern is as follows for N=4:
     
     ****
     ***
     **
     *
     
     */
    func createPattern(numberOfRows: Int) {
        guard numberOfRows > 0 else {
            return
        }

        for i in 0..<numberOfRows {
            for _ in 0..<(numberOfRows - i) {
                print("*", terminator: "")
            }

            print("")   // For newline.
        }
    }
}


/*
 Dry run details:

 numberOfRows = 4

 i = 0; j: 0 -> 3
    - j = 0, 1, 2, 3    -> ****
 
 i = 1; j: 0 -> 2
    - j = 0, 1, 2    -> ***
 
 i = 2; j: 0 -> 1
    - j = 0, 1    -> **
 
 i = 3; j: 0 -> 0
    - j = 0    -> *
 */
