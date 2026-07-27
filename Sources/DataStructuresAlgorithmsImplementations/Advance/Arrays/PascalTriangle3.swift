//
//  PascalTriangle3.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 27/07/26.
//

/// Pascal's Triangle III
/// Given an integer n, return the first n (1-Indexed) rows of Pascal's triangle.
///
/// In Pascal's triangle:
/// - The first row has one element with a value of 1.
/// - Each row has one more element in it than its previous row.
/// - The value of each element is equal to the sum of the elements directly above it when arranged in a triangle format.
///
/// Example 1
/// - Input: n = 4
/// - Output: [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1]]
/// - Explanation: The Pascal's Triangle is as follows:
/// - 1
/// - 1 1
/// - 1 2 1
/// - 1 3 3 1
/// - 1st Row has its value set to 1.
/// - All other cells take their value as the sum of the values directly above them
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/pascals-triangle-iii?subject=dsa&approach=optimal
class PascalTriangle3 {
    func generatePascalTriangle(rows: Int) -> [[Int]] {
        guard rows > 0 else {
            return []
        }

        var pascalTriangle = [[Int]]()
        pascalTriangle.reserveCapacity(rows)

        for row in 1...rows {
            pascalTriangle.append(generatePascalRow(row))
        }
        
        return pascalTriangle
    }
    
    private func generatePascalRow(_ row: Int) -> [Int] {
        var pascalElement = 1  // First element of any row.

        var pascalRow = [Int]()
        pascalRow.reserveCapacity(row)
        pascalRow.append(pascalElement)
        
        // Formula: previousPascalElement * (row - column) / column
        // Adding further elements with considering 0-based indexing for columns, for simplicity in
        // formula implementation.
        for column in 1..<row {
            pascalElement = pascalElement * (row - column) / column
            pascalRow.append(pascalElement)
        }
        
        return pascalRow
    }
}
