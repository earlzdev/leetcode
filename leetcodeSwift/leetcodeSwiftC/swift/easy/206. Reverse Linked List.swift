//
//  206. Reverse Linked List.swift
//  leetcodeSwiftC
//
//  Created by earl on 14.06.2023.
//

import Foundation

class ReverseLinkedList {
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head
        var newList: ListNode? = nil
        
        while(current != nil) {
            var nextNode = current?.next
            current?.next = newList
            newList = current
            current = nextNode
        }
        
        return newList
    }
}
