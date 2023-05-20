//
//  119. Pascal's Triangle II .swift
//  leetcodeSwiftC
//
//  Created by earl on 20.05.2023.
//

import Foundation


// not solved
class PascalTriangle2 {
    
    func getRow(_ rowIndex: Int) -> [Int] {
        var nums = Array(repeating: 0, count: rowIndex)
        var subNum = Array(repeating: 0, count: rowIndex / 2)
        for i in 0..<nums.count / 2 {
            if i == 0 {
                subNum[i] = 1
            } else if i == 1 {
                subNum[i] = rowIndex - 1
            } else {
                subNum[i] = rowIndex - 2
            }
        }
        print(subNum)
        
//        if rowIndex > 2 {
//            for i in nums.indices {
//                if i == 0 {
//                    nums[i] = 1
//                } else if i == nums.count - 1 {
//                    nums[i] = 1
//                } else if i == 1 {
//                    nums[i] = rowIndex - 1
//                }
//            }
//        }
        return nums
    }
}
