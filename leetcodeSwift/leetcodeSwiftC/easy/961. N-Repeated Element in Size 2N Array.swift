//
//  961. N-Repeated Element in Size 2N Array.swift
//  leetcodeSwiftC
//
//  Created by earl on 03.01.2024.
//

import Foundation

class NRepeatedElementInSize2NArray {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        let dups = Dictionary(grouping: nums, by: {$0}).filter { $1.count > 1 }.keys
        return dups.first ?? 0
    }
}
