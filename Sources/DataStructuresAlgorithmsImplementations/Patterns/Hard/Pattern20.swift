//
//  Pattern20.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 14/04/26.
//

class Pattern20 {

    /**
     Pattern 20

     For n = 5
     The following pattern should output:
     
     *        *
     **      **
     ***    ***
     ****  ****
     **********
     ****  ****
     ***    ***
     **      **
     *        *
     
     */
    func createPattern(numberOfLines: Int) {
        guard numberOfLines > 0 else {
            return
        }

        printUpperPattern(numberOfLines: numberOfLines)
        printLowerPattern(numberOfLines: numberOfLines)
    }

    func printUpperPattern(numberOfLines: Int) {
        for row in 0..<numberOfLines {
            for _ in 0...row {
                print("*", terminator: "")
            }
            
            for _ in 0..<(2 * numberOfLines - 2 * row - 2) {
                print(" ", terminator: "")
            }
            
            for _ in 0...row {
                print("*", terminator: "")
            }

            print()
        }
    }

    func printLowerPattern(numberOfLines: Int) {
        for row in 1..<numberOfLines {
            for _ in 0..<(numberOfLines - row) {
                print("*", terminator: "")
            }
            
            for _ in 0..<(2 * row) {
                print(" ", terminator: "")
            }

            for _ in 0..<(numberOfLines - row) {
                print("*", terminator: "")
            }
            
            print()
        }
    }
}
