//
//  345. Reverse Vowels of a String.swift
//  leetcodeSwiftC
//
//  Created by earl on 27.06.2023.
//

import Foundation

//Input: s = "leetcode"
//Output: "leotcede"

class ReverseVowelsOfAString {
    
    func reverseVowels(_ s: String) -> String {
        var s = Array(s)
                let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

                var (L, R) = (0, s.count-1)
                while L < R {
                    if vowels.contains(s[L]) && vowels.contains(s[R]) {
                        s.swapAt(L, R)
                        L += 1
                        R -= 1
                    } else if vowels.contains(s[L]) {
                        R -= 1
                    } else if vowels.contains(s[R]) {
                        L += 1
                    } else {
                        L += 1
                        R -= 1
                    }
                }

            return String(s)
    }
}
