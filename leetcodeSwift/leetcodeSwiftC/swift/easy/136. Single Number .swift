//
//  136. Single Number .swift
//  leetcodeSwiftC
//
//  Created by earl on 24.05.2023.
//

import Foundation

class SingleNumber {
    
    func singleNumber(_ nums: [Int]) -> Int {
        var number = 0
        for i in nums {
            if nums.filter({ $0 == i }).count == 1 {
                number = i
            }
        }
        return number
    }
}
