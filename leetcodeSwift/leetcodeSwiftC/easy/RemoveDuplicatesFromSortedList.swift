//
//  DeleteDuplicatesFromSortedList.swift
//  leetcodeSwiftC
//
//  Created by earl on 07.05.2023.
//

import Foundation

//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
}

//[1,1,2,3,3]

class RemoveDuplicatesFromSortedList {
        
        func deleteDuplicates(_ head: ListNode?) -> ListNode? {
            var p = head
                while p?.next != nil {
                    if p!.val == p!.next!.val {
                        p!.next = p?.next?.next
                    } else {
                        p = p?.next
                    }
                }
                return head
        }
    }
