//
//  219. Contains Duplicate II .swift
//  leetcodeSwiftC
//
//  Created by earl on 17.06.2023.
//

import Foundation


class ContainsDuolicate2 {
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        guard !nums.isEmpty else { return false }
           var dict: [Int: Int] = [:]
           
           for (index, value) in nums.enumerated() {
               if let elem = dict[value],
                  abs(index - elem) <= k {
                   return true
               }
               dict[value] = index
           }
           
           return false
    }
}
