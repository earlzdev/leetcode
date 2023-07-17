//
//  226. Invert Binary Tree .swift
//  leetcodeSwiftC
//
//  Created by earl on 20.06.2023.
//

import Foundation

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class InvertBinaryTree {
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        traverseLeftSubTree(head: root)
        return root
    }
    
    func traverseLeftSubTree(head: TreeNode?) {
        if head != nil {
            let temp = head?.left
            head?.left = head?.right
            head?.right = temp
            if head?.left != nil {
                traverseLeftSubTree(head: head?.left)
            }
            if head?.right != nil {
                traverseLeftSubTree(head: head?.right)
            }
        }
    }
}
