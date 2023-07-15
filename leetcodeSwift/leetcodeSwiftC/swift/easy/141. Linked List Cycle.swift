//
//  141. Linked List Cycle.swift
//  leetcodeSwiftC
//
//  Created by earl on 24.05.2023.
//

import Foundation


// solved
class LinkedListCycle {

    var passedNodes: [ListNode] = []
    var ans: Bool = false

    func hasCycle(_ head: ListNode?) -> Bool {
        if head != nil && head?.val != nil {
            if passedNodes.contains { $0 === head } {
                ans = true
            } else if head?.next != nil && head?.next?.val != nil {
                passedNodes.append(head!)
                hasCycle(head?.next)
            }
        }
        return ans
    }
}
