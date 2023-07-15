//
//  190. Reverse Bits.swift
//  leetcodeSwiftC
//
//  Created by earl on 08.06.2023.
//

import Foundation

class ReverseBits {
    
    func reverseBits(_ n: Int) -> Int {
        let str = String(n, radix: 2)
        let reversed: String = String(str.reversed())
        let paddedBinaryString = reversed.padding(toLength: 32, withPad: "0", startingAt: 0)
        let readyInt: Int  = Int(paddedBinaryString, radix: 2) ?? 0
        return readyInt
    }
}
