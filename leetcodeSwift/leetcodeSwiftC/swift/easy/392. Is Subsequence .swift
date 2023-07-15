//
//  392. Is Subsequence .swift
//  leetcodeSwiftC
//
//  Created by earl on 05.07.2023.
//

import Foundation

class isSubsequenceTask {
    
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = s.startIndex
        var j = t.startIndex
        while i < s.endIndex && j < t.endIndex {
            if s[i] == t[j] {
                i = s.index(after: i)
            }
            
            j = t.index(after: j)
        }
        
        return i == s.endIndex
    }
}
