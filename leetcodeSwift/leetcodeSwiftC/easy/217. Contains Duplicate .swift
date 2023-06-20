//
//  217. Contains Duplicate .swift
//  leetcodeSwiftC
//
//  Created by earl on 15.06.2023.
//

import Foundation

class ContainsDuplicate {
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        return nums.count != Set(nums).count
    }
}
