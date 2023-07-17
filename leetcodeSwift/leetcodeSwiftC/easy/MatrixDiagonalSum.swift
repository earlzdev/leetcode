//
//  MatrixDiagonalSum.swift
//  leetcodeSwiftC
//
//  Created by earl on 08.05.2023.
//

import Foundation

// solved

class MatrixDiagonalSum {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var sum = 0
        var matrixLength = mat[0].count
        for i in 0...mat.count - 1 {
            sum += mat[i][matrixLength - 1 - i]
        }
        for i in 0...mat.count - 1 {
            sum += mat[i][0 + i]
        }
        if (matrixLength % 2 != 0) {
            sum -= mat[matrixLength / 2][matrixLength / 2]
        }
        return sum
    }
}
