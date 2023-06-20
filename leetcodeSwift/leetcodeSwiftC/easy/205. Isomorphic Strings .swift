//
//  205. Isomorphic Strings .swift
//  leetcodeSwiftC
//
//  Created by earl on 13.06.2023.
//

import Foundation

class IsomorphicStrings {
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var sArr: Array<String> = s.map { String($0) }
        let tArr: Array<String> = t.map { String($0) }
        var dict: [String: String] = [:]
        for i in sArr.indices {
            if dict.keys.contains(sArr[i]) {
                let letterToAppend = dict[sArr[i]]
                sArr[i] = letterToAppend ?? "-"
            } else {
                if dict.values.contains(tArr[i]) {
                    let letterToAppend = dict.first(where: { $0.value == tArr[i] })?.key
                    if letterToAppend != sArr[i] {
                        return false
                    }
                } else {
                    dict[sArr[i]] = tArr[i]
                    sArr[i] = tArr[i]
                }
            }
        }
        print(sArr)
        return sArr == tArr
    }
}
