//
//  191. Number of 1 Bits .swift
//  leetcodeSwiftC
//
//  Created by earl on 09.06.2023.
//

import Foundation

class NumberOf1Bits {
    func hammingWeight(_ n: Int) -> Int {
        let str = String(n, radix: 2)
        let reversed: String = String(str.reversed())
        let paddedReversedBinaryString = reversed.padding(toLength: 32, withPad: "0", startingAt: 0)
        let paddedBinaryString = String(paddedReversedBinaryString.reversed())
        var counter = 0
        for i in paddedBinaryString {
            if i != "0" {
                counter += 1
            }
        }
        return counter
    }
}
