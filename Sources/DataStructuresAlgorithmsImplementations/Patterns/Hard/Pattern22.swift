//
//  Pattern22.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 14/04/26.
//

class Pattern22 {

    /**
     Pattern 22
     For n = 3
     The following pattern should output:
     
     3 3 3 3 3
     3 2 2 2 3
     3 2 1 2 3
     3 2 2 2 3
     3 3 3 3 3
     */
    func createPattern(numberOfLines: Int) {
        guard numberOfLines > 0 else {
            return
        }

        let length = 2 * numberOfLines - 1
        let lastIndex = length - 1
        
        for rowIndex in 0..<length {

            var rowChars = [String]()
            for columnIndex in 0..<length {
                let topDistance = rowIndex
                let bottomDistance = lastIndex - rowIndex
                let leftDistance = columnIndex
                let rightDistance = lastIndex - columnIndex
                
                let minDistance = min(
                    min(topDistance, bottomDistance),
                    min(leftDistance, rightDistance)
                )

                rowChars.append("\(numberOfLines - minDistance)")
            }

            print(rowChars.joined(separator: " "))
        }

    }
}
