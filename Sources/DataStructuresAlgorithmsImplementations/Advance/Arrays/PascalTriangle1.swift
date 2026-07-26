//
//  PascalTriangle1.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 26/07/26.
//

/// **Pascal's Triangle I**
/// Given two integers r and c, return the value at the rth row and cth column (1-indexed) in a
/// Pascal's Triangle.
///
/// In Pascal's triangle:
/// - The first row contains a single element 1.
/// - Each row has one more element than the previous row.
/// - Every row starts and ends with 1.
/// - For all interior elements (i.e., not at the ends), the value at position (r, c) is computed as
/// the sum of the two elements directly above it from the previous row:
/// - Pascal[r][c]=Pascal[r−1][c−1]+Pascal[r−1][c] where indexing is 1-based
///
/// Example 1
/// - Input: r = 4, c = 2
/// - Output: 3
/// - Explanation: The Pascal's Triangle is as follows:
/// - 1
/// - 1 1
/// - 1 2 1
/// - 1 3 3 1
/// - ....
/// - Thus, value at row 4 and column 2 = 3
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/pascals-triangle-i?subject=dsa&approach=optimal
class PascalTriangle1 {
    func findElement(row: Int, column: Int) -> Int {
        return nCombinationR(n: row - 1, r: column - 1)
    }
    
    private func nCombinationR(n: Int, r: Int) -> Int {
        var result = 1
        for i in 0..<r {
            result *= n - i
            result /= i + 1
        }
        
        return result
    }
}
