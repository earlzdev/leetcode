//
//  169. Majority Element .swift
//  leetcodeSwiftC
//
//  Created by earl on 06.06.2023.
//

import Foundation

class MajorityElement {
    
    func majorityElement(_ nums: [Int]) -> Int {
        let size = nums.count
        var result: Int = -1
        for i in nums {
            if nums.filter({ $0 == i }).count > size / 2 {
                result = i
                break
            }
        }
        return result
    }
}
