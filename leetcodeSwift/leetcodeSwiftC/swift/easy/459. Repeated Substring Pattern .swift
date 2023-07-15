//
//  459. Repeated Substring Pattern .swift
//  leetcodeSwiftC
//
//  Created by earl on 13.07.2023.
//

import Foundation

class RepeatedSubstringPattern {
    
    func repeatedSubstringPattern(_ s: String) -> Bool {
        var l = Array(s)
        let n = l.count
        var str = ""
        for i in 0..<n/2{
            str+=String(l[i])
            if(String(repeating: str, count: n/(i+1)) == s){return true}
        }
        return false
    }
}
