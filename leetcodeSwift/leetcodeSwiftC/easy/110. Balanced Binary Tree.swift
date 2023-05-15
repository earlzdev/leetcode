//
//  110. Balanced Binary Tree.swift
//  leetcodeSwiftC
//
//  Created by earl on 14.05.2023.
//

import Foundation

//Definition for a binary tree node.
//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}
//
//
////solved
//class BalancedBinaryTree {
//
//    var isBalanced: Bool = true
//
//    func isBalanced(_ root: TreeNode?) -> Bool {
//        if root == nil {
//            return true
//        }
//        maxDepth(root: root)
//        return isBalanced
//    }
//
//    func maxDepth(root: TreeNode?) -> Int {
//        if root == nil {
//            return 0
//        } else {
//            var leftDepth = maxDepth(root: root?.left)
//            var rightDepth = maxDepth(root: root?.right)
//            if abs(leftDepth - rightDepth) > 1 {
//                isBalanced = false
//            }
//            return max(leftDepth, rightDepth) + 1
//        }
//    }
//}
