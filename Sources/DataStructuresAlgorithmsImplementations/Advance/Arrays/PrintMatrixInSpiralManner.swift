//
//  PrintMatrixInSpiralManner.swift
//  DataStructuresAlgorithmsImplementations
//
//  Created by Rohit Patil on 26/07/26.
//

/// Print the matrix in spiral manner
/// Given an M * N matrix, print the elements in a clockwise spiral manner.
///
/// Return an array with the elements in the order of their appearance when printed in a spiral manner.
/// Example 1
/// - Input: matrix = [[1, 2, 3], [4 ,5 ,6], [7, 8, 9]]
/// - Output: [1, 2, 3, 6, 9, 8, 7, 4, 5]
/// - Explanation: The elements in the spiral order are 1, 2, 3 -> 6, 9 -> 8, 7 -> 4, 5.
///
/// Problem link: https://takeuforward.org/plus/dsa/problems/print-the-matrix-in-spiral-manner?subject=dsa&approach=optimal
class PrintMatrixInSpiralManner {

    func print(matrix: [[Int]]) -> [Int] {
        guard let firstArray = matrix.first else {
            return []
        }

        var left = 0
        var right = firstArray.count - 1
        var top = 0
        var bottom = matrix.count - 1
        var result = [Int]()
        result.reserveCapacity(matrix.count * firstArray.count)

        while left <= right && top <= bottom {
            for column in left...right {
                result.append(matrix[top][column])
            }
            top += 1
            
            if top <= bottom {
                for row in top...bottom {
                    result.append(matrix[row][right])
                }
                right -= 1
            }
            
            // In swift need the range bounds checks to make sure the lower bound of the range does
            // not become greater than higher bound which can result in a crash.
            if top <= bottom && left <= right {
                for column in (left...right).reversed() {
                    result.append(matrix[bottom][column])
                }
                bottom -= 1
            }
            
            if top <= bottom && left <= right {
                for row in (top...bottom).reversed() {
                    result.append(matrix[row][left])
                }
                left += 1
            }
        }
        
        return result
    }
}

/*
 Dry run:
 [
     0  1   2
   0 [1, 2, 3],
   1 [4 ,5 ,6],
   2 [7, 8, 9]
 ]
 */
