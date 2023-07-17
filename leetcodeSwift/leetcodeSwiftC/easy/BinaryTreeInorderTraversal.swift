//
//  BinaryTreeInorderTraversal.swift
//  leetcodeSwiftC
//
//  Created by earl on 09.05.2023.
//

import Foundation

// Definition for a binary tree node.
// public class TreeNode {
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

//class BinaryTreeInorderTraversal {
//
//    func inorderTraversal(_ root: TreeNode?) -> [Int] {
//        var nodes: [Int] = []
//        traverseTree(tree: root, nodesList: &nodes)
//        return nodes
//    }
//
//    func traverseTree(tree: TreeNode?, nodesList: inout [Int]) {
//        if tree != nil {
//            traverseTree(tree: tree?.left, nodesList: &nodesList)
//            nodesList.insert(tree?.val ?? 0, at: nodesList.count)
//            traverseTree(tree: tree?.right, nodesList: &nodesList)
//        }
//    }
//}
