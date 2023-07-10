//
//  383. Ransom Note .swift
//  leetcodeSwiftC
//
//  Created by earl on 02.07.2023.
//

import Foundation

class RansomNote {
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        let lettersArr = Array(magazine)
        var ans: [Bool] = []
        for i in ransomNote {
            print(i)
            print(ans)
            if lettersArr.contains(i) && lettersArr.filter({ $0 == i }).count >= ransomNote.filter({ $0 == i }).count {
                ans.append(true)
            } else {
                ans.append(false)
            }
        }
        print(ans)
        
        return !ans.contains(false)
    }
}
