//
//  118. Pascal's Triangle .swift
//  leetcodeSwiftC
//
//  Created by earl on 19.05.2023.
//

import Foundation


// solved
class PascalTriangle {

    func generate(_ numRows: Int) -> [[Int]] {
        var readyNum: [[Int]] = [[1]]
        var prevArr: [Int] = []
        for _ in 1...numRows {
            if prevArr.isEmpty {
                prevArr = [1]
            } else if prevArr == [1] {
                readyNum.append([1, 1])
                prevArr = [1, 1]
            } else if prevArr == [1, 1] {
                readyNum.append([1, 2, 1])
                prevArr = [1, 2, 1]
            } else {
                var nums: [Int] = []
                nums.append(1)
                for i in 1...prevArr.count - 1 {
                    nums.append(prevArr[i - 1] + prevArr[i])
                }
                nums.append(1)
                prevArr = nums
                readyNum.append(nums)
            }
        }
        return readyNum
    }
}
