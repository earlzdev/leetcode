//
//  104. Maximum Depth of Binary Tree.swift
//  leetcodeSwiftC
//
//  Created by earl on 11.05.2023.
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
//class MaximumDepyhOfBinaryTree {
//
//    func maxDepth(_ root: TreeNode?) -> Int {
//        if root == nil {
//            return 0
//        }
//        var left = maxDepth(root?.left)
//        var right = maxDepth(root?.right)
//        return max(left, right) + 1
//    }
//}
