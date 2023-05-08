//
//  88MergeSortedArray.swift
//  leetcodeSwiftC
//
//  Created by earl on 07.05.2023.
//

import Foundation

//Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
//Output: [1,2,2,3,5,6]

class MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for i in 0..<nums2.count {
            var nullableIndex: Int = nums1.firstIndex(of: 0) ?? 0
            nums1[nullableIndex] = nums2[i]
        }
        nums1.sort()
    }
}
