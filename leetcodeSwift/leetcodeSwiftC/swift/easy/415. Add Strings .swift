//
//  415. Add Strings .swift
//  leetcodeSwiftC
//
//  Created by earl on 11.07.2023.
//

import Foundation

class AddStrings {
    
    func addStrings(_ num1: String, _ num2: String) -> String {
        if num1.count <= 3 && num2.count <= 3 {
            let f = Int(num1) ?? 0
            let s = Int(num2) ?? 0
            return String(f + s)
        }
        let num1Reversed = String(num1.reversed())
        let num2Reversed = String(num2.reversed())
        var longest: String
        var shortest: String
        if num1.count > num2.count {
            longest = num1Reversed
            shortest = num2Reversed
        } else {
            longest = num2Reversed
            shortest = num1Reversed
        }
        var carry: Int = 0
        var ready = ""
        for i in 0...longest.count - 1 {
            if i <= shortest.count - 1 {
                let num1Index = longest.index(longest.startIndex, offsetBy: i)
                let num2Index = shortest.index(shortest.startIndex, offsetBy: i)
                let first = Int(String(longest[num1Index])) ?? 0
                let second = Int(String(shortest[num2Index])) ?? 0
                let sum = first + second + carry
                carry = sum / 10
                let readySum = sum % 10
                ready.append(String(readySum))
                print(sum)
            } else {
                let index = longest.index(longest.startIndex, offsetBy: i)
                var num = Int(String(longest[index])) ?? 0
                var sumWithNum = (num + carry) % 10
                carry = (num + carry) / 10
                ready.append(String(sumWithNum))
            }
        }
        if carry != 0 {
            ready.append(String(carry))
        }
        return String(ready.reversed())
    }
}
