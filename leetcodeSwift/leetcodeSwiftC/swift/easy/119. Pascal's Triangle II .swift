//
//  119. Pascal's Triangle II .swift
//  leetcodeSwiftC
//
//  Created by earl on 20.05.2023.
//

import Foundation


// solved
class PascalTriangle2 {
    
    func getRow(_ rowIndex: Int) -> [Int] {
//        // ?
        if rowIndex == 0 {
            return [1]
        }
        var ans = [Int](repeating: 1, count: rowIndex+1)
        for i in 1...rowIndex {
            ans[i] = ans[i-1]*(rowIndex-i+1)/i
        }
        return ans
    }
    
    
    // not optimal solution
//    func getRow(_ rowIndex: Int) -> [Int] {
//        var readyNum: [[Int]] = [[1]]
//        var prevArr: [Int] = []
//        for _ in 1...rowIndex + 1 {
//            if prevArr.isEmpty {
//                prevArr = [1]
//            } else if prevArr == [1] {
//                readyNum.append([1, 1])
//                prevArr = [1, 1]
//            } else if prevArr == [1, 1] {
//                readyNum.append([1, 2, 1])
//                prevArr = [1, 2, 1]
//            } else {
//                var nums: [Int] = []
//                nums.append(1)
//                for i in 1...prevArr.count - 1 {
//                    nums.append(prevArr[i - 1] + prevArr[i])
//                }
//                nums.append(1)
//                prevArr = nums
//                readyNum.append(nums)
//            }
//        }
//    }
}
