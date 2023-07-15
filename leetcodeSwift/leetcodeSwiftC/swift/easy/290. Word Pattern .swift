//
//  290. Word Pattern .swift
//  leetcodeSwiftC
//
//  Created by earl on 26.06.2023.
//

import Foundation

//Input: pattern = "abba", s = "dog cat cat dog"
//Output: true

class WordPattern {
    
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let s = s.split(separator: " ")
        let pattern = Array(pattern)
        var hashMap: [Character: Substring] = [:]
        
        if pattern.count != s.count {
            return false
        }
            
        for i in 0..<pattern.count {
            if hashMap[(pattern[i])] == nil {
                hashMap[(pattern[i])] = s[i]
            } else if hashMap[(pattern[i])] != s[i] {
                return false
            }
        }
            
        return hashMap.keys.count == Set(hashMap.values).count
    }
}
