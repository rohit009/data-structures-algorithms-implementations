//
//  PascalTriangle2.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 27/07/26.
//

/// **Pascal's Triangle II**
/// Given an integer r, return all the values in the rth row (1-indexed) in Pascal's Triangle in
/// correct order.
///
/// In Pascal's triangle:
/// - The first row has one element with a value of 1.
/// - Each row has one more element in it than its previous row.
/// - The value of each element is equal to the sum of the elements directly above it when arranged in a triangle format.
///
/// Example 1
/// - Input: r = 4
/// - Output: [1, 3, 3, 1]
/// - Explanation: The Pascal's Triangle is as follows:
/// - 1
/// - 1 1
/// - 1 2 1
/// - 1 3 3 1
/// - ....
/// - Thus the 4th row is [1, 3, 3, 1]
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/pascals-triangle-ii?subject=dsa&approach=optimal
class PascalTriangle2 {

    /// Optimal solution: O(N) time complexity, O(1) space complexity. Where N = row passed as input.
    func generateRow(_ row: Int) -> [Int] {
        guard row > 0 else {
            return []
        }
        
        var pascalRow = [Int]()
        pascalRow.reserveCapacity(row)
        var pascalElement = 1
        pascalRow.append(pascalElement)  // First element is always 1.
 
        for column in 1..<row {  // Starting from 2nd column with 0 based indexing.
            pascalElement = pascalElement * (row - column) / column
            pascalRow.append(pascalElement)
        }
        
        return pascalRow
    }

//    /// Brute force: O(N^2) where N = row passed in as input. Uses combination formula for
//    /// generating each element in the row.
//    func generateRow(_ row: Int) -> [Int] {
//        guard row > 0 else {
//            return []
//        }
//
//        var pascalRow = [Int]()
//        pascalRow.reserveCapacity(row)
//
//        for column in 1...row {  // rows and columns are of same length in Pascal triangle.
//            pascalRow.append(pascalElement(row: row, column: column))
//        }
//        
//        return pascalRow
//    }
//    
//    private func pascalElement(row: Int, column: Int) -> Int {
//        nCombinationR(n: row - 1, r: column - 1)
//    }
//    
//    private func nCombinationR(n: Int, r: Int) -> Int {
//        var result = 1
//        for i in 0..<r {
//            result *= n - i
//            result /= i + 1
//        }
//        
//        return result
//    }
}
