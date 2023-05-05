//
//  SwiftEasy.swift
//  leetcode
//
//  Created by earl on 04.05.2023.
//

import Foundation

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


//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
}

//class RemoveDuplicatesFromSortedList {
//    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
//
//    }
//}
