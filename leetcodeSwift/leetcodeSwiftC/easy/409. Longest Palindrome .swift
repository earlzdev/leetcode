//
//  409. Longest Palindrome .swift
//  leetcodeSwiftC
//
//  Created by earl on 06.07.2023.
//

import Foundation


class LongestPalindrome {
    
    func longestPalindrome(_ s: String) -> Int {
        let dict = Dictionary(s.map { (String($0), 1) }, uniquingKeysWith: +)
        var result = 0
        
        dict.forEach {
            result += $0.value / 2 * 2
            guard result % 2 == 0, $0.value % 2 == 1 else { return }
            result += 1
        }
        return result
    }
}
