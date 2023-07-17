//
//  202. Happy Number.swift
//  leetcodeSwiftC
//
//  Created by earl on 09.06.2023.
//

import Foundation

class HappyNumber {
    func isHappy(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        var iterableCounter = 0
        var result = false
        var str: String = String(n)
        var count = 0
        var swap = true
        while(swap) {
            swap = false
            for i in 0..<str.count {
                let stringDigit: String = String(str[str.index(str.startIndex, offsetBy: i)])
                let digit: Int = Int(stringDigit)!
                count = count + (digit * digit)
            }
            if count == 1 {
                swap = false
                result = true
            } else if iterableCounter == 10 {
                swap = false
            } else {
                swap = true
                iterableCounter += 1
                str = String(count)
                count = 0
            }
        }
        return result
    }
}
