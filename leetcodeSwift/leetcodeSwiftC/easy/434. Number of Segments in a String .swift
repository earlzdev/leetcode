//
//  434. Number of Segments in a String .swift
//  leetcodeSwiftC
//
//  Created by earl on 12.07.2023.
//

import Foundation

class NumberOfSegmentsInAString {
    
    func countSegments(_ s: String) -> Int {
        let array = s.components(separatedBy: " ").filter { !$0.isEmpty }
        return array.count
    }
}
