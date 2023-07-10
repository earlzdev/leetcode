//
//  387. First Unique Character in a String .swift
//  leetcodeSwiftC
//
//  Created by earl on 03.07.2023.
//

import Foundation

class FirstUniqueCharacterInAString {
    
    func firstUniqChar(_ s: String) -> Int {
        var ans = -1
        for i in s {
            if s.firstIndex(of: i) == s.lastIndex(of: i) {
                let temp = s.firstIndex(of: i)
                ans = s.distance(from: s.startIndex, to: temp!)
                break
            }
        }
        return ans
    }
}
