//
//  389. Find the Difference.swift
//  leetcodeSwiftC
//
//  Created by earl on 04.07.2023.
//

import Foundation

class FindDifference {
    
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var sArr = Array(s)
        var tArr = Array(t)
        for i in sArr {
            let temp = tArr.firstIndex(of: i) ?? 0
            tArr.remove(at: temp)
        }
        return Character(String(tArr))
    }
}
