//
//  203. Remove Linked List Elements .swift
//  leetcodeSwiftC
//
//  Created by earl on 12.06.2023.
//

import Foundation

class Solution {
   
    var listHead: ListNode? = nil
    var prevNode: ListNode? = nil
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return listHead
        }
        if listHead == nil && head?.val != val {
            listHead = head
            prevNode = head
            return removeElements(head?.next, val)
        } else if listHead == nil && head?.val == val {
            return removeElements(head?.next, val)
        } else if head != nil {
            if head?.val == val {
                prevNode?.next = head?.next
                return removeElements(head?.next, val)
            } else {
                prevNode = head
                return removeElements(head?.next, val)
            }
        }
        return nil
    }
}
