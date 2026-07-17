//
//  Pattern21.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 14/04/26.
//

class Pattern21 {

    /**
     Pattern 21
     For n = 4
     The following pattern should output:
     
     ****
     *  *
     *  *
     ****
     
     */
    func createPattern(numberOfLines: Int) {
        guard numberOfLines > 0 else {
            return
        }

        for row in 0..<numberOfLines {
            for column in 0..<numberOfLines {
                if row == 0 || row == numberOfLines - 1
                    || column == 0 || column == numberOfLines - 1 {
                    print("*", terminator: " ")
                } else {
                    print(" ", terminator: " ")
                }
            }
        }
    }
}
