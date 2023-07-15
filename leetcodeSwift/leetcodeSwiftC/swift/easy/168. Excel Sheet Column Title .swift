//
//  168. Excel Sheet Column Title .swift
//  leetcodeSwiftC
//
//  Created by earl on 31.05.2023.
//

import Foundation

class ExcelSheetColumnTitle {
    
    func convertToTitle(_ columnNumber: Int) -> String {
        var columnTitle = ""
        var currentNumber = columnNumber

        while currentNumber > 0 {
            let remainder = (currentNumber - 1) % 26
            let char = Character(UnicodeScalar(65 + remainder)!)
            columnTitle.insert(char, at: columnTitle.startIndex)
            currentNumber = (currentNumber - 1) / 26
        }

        return columnTitle
    }
}
