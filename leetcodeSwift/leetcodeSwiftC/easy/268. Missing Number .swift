//
//  268. Missing Number .swift
//  leetcodeSwiftC
//
//  Created by earl on 31.07.2023.
//

import Foundation


class MissingNumber {
    
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        for i in 0...nums.count {
            if !nums.contains(i) {
                return i
            }
        }
        return 0
    }
}
