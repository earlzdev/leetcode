//
//  SwiftEasy.swift
//  leetcode
//
//  Created by earl on 04.05.2023.
//

import Foundation

//solved
class ClimbingStairs {
    func climbStairs(_ n: Int) -> Int {
            var a = 0
            var b = 1
            for i in 1...n {
                let temp = a
                a = b
                b += temp
            }
            return b
        }
}
