//
//  482. License Key Formatting .swift
//  leetcodeSwiftC
//
//  Created by earl on 14.07.2023.
//

import Foundation

class LicenseKeyFormatting {
    
    func licenseKeyFormatting(_ s: String, _ k: Int) -> String {
        if s.count == 1 && s != "-" {
            return s.uppercased()
        } else if s == "-" {
            print("s equals -")
            return ""
        }
        let sArr = Array(s)
        let filteredArr = sArr.filter({ $0 != "-" })
        print(filteredArr)
        var upperCaseFilteredArr = filteredArr.map({ $0.uppercased() })
        upperCaseFilteredArr.reverse()
        print(upperCaseFilteredArr)
        var readyStr = ""
        for i in 0..<upperCaseFilteredArr.count {
            let temp = upperCaseFilteredArr.index(upperCaseFilteredArr.startIndex, offsetBy: i)
            let item = upperCaseFilteredArr[temp]
            readyStr.append(item)
            
            if i != 0 && (i + 1) % k == 0 && i != upperCaseFilteredArr.count - 1 {
                readyStr.append("-")
            } else if i == 0 && (i + 1) % k == 0 {
                readyStr.append("-")
            }
        }
        print(readyStr)
        let res = String(readyStr.reversed())
        return res
    }
}
