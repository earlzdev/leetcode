//
//  520. Detect Capital .swift
//  leetcodeSwiftC
//
//  Created by earl on 16.07.2023.
//

import Foundation

class DetectCapital {
    func detectCapitalUse(_ word: String) -> Bool {
        let arr = Array(word)
        if arr.allSatisfy { $0.isUppercase } {
            return true
        }
        if arr.allSatisfy { !$0.isUppercase } {
            return true
        }
        let temp = arr[0]
        let startIndex = 1
        let subArr = arr.dropFirst()
        if temp.isUppercase && subArr.allSatisfy { !$0.isUppercase } {
            return true
        }
        return false
    }
}
