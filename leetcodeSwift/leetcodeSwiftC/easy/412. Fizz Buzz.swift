//
//  412. Fizz Buzz.swift
//  leetcodeSwiftC
//
//  Created by earl on 10.07.2023.
//

import Foundation

class FuzzBuzz {
    
    func fizzBuzz(_ n: Int) -> [String] {
        var fizz = "Fizz"
        var buzz = "Buzz"
        var fizzBuzz = "FizzBuzz"
        var readyArr: [String] = []
        for i in 0...n {
            if i % 3 == 0 && i % 5 == 0 {
                readyArr.append(fizzBuzz)
            } else if i % 3 == 0 {
                readyArr.append(fizz)
            } else if i % 5 == 0 {
                readyArr.append(buzz)
            } else {
                readyArr.append(String(i))
            }
        }
        return readyArr
    }
}
