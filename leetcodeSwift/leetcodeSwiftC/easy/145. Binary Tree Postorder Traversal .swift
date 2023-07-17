//
//  145. Binary Tree Postorder Traversal .swift
//  leetcodeSwiftC
//
//  Created by earl on 30.05.2023.
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

// solved
//class Solution {
//
//    func postorderTraversal(_ root: TreeNode?) -> [Int] {
//            if root == nil {
//                return []
//            }
//            var nodes: [Int] = []
//            nodes.append(root?.val ?? 0)
//            traverseTree(root: root, nodes: &nodes)
//            var readyArr = nodes.reverse()
//            return nodes
//        }
//
//        func traverseTree(root: TreeNode?, nodes: inout [Int]) {
//            if root != nil {
//                if root?.right != nil {
//                    nodes.append(root?.right?.val ?? 0)
//                    traverseTree(root: root?.right, nodes: &nodes)
//                }
//                if root?.left != nil {
//                    nodes.append(root?.left?.val ?? 0)
//                    traverseTree(root: root?.left, nodes: &nodes)
//                }
//            }
//        }
//
//}
