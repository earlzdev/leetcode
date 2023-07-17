//
//  160. Intersection of Two Linked Lists.swift
//  leetcodeSwiftC
//
//  Created by earl on 30.05.2023.
//

import Foundation


// solved
class IntersectionOfTwoLinkedLists {

    var intersectNode: ListNode? = nil

       func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
           if headA === headB {
               return headA
           }
           var nodesA: [ListNode?] = [headA]
           traverse(root: headA, nodes: &nodesA)
           print(nodesA.map({ $0?.val }))
           traverseB(root: headB, nodesList: nodesA)
           return intersectNode
       }
       
       func traverseB(root: ListNode?, nodesList: [ListNode?]) {
          if nodesList.contains(where: { $0 === root }) {
               print("da")
               intersectNode = root
           } else if root?.next != nil {
               traverseB(root: root?.next, nodesList: nodesList)
           }
       }
       
       func traverse(root: ListNode?, nodes: inout [ListNode?]) {
           if root != nil && root?.next != nil {
               nodes.append(root?.next)
               traverse(root: root?.next, nodes: &nodes)
           }
       }
}
