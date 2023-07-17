//
//  125. Valid Palindrome .swift
//  leetcodeSwiftC
//
//  Created by earl on 23.05.2023.
//

import Foundation

class ValidPalindrome {
    
    func isPalindrome(_ s: String) -> Bool {
        var lettersString: String = s.filter { $0.isLetter || $0.isNumber }
        var filteredString = ""
        for i in lettersString {
            filteredString.append(i.lowercased())
        }
        var reversed = String(filteredString.reversed())
        return filteredString == reversed
    }
}
