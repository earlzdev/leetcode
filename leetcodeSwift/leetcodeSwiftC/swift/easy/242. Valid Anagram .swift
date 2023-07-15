//
//  242. Valid Anagram .swift
//  leetcodeSwiftC
//
//  Created by earl on 22.06.2023.
//

import Foundation

class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sArr = Array(s).sorted()
        let tArr = Array(t).sorted()
        var result = false
        if tArr.count != sArr.count {
            return false
        }
        for i in tArr.indices {
            if tArr[i] == sArr[i] {
                result = true
            } else {
                return false
            }
        }
        return result
    }
}
