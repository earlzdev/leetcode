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

//not solved
//class BalancedBinaryTree {
//    func isBalanced(_ root: TreeNode?) -> Bool {
//        var leftNodes: [Int] = []
//        var rightNodes: [Int] = []
//        traverseLeftSubTree(node: root?.left, nodes: &leftNodes)
//        traverseRightSubTree(node: root?.right, nodes: &rightNodes)
//        print("left -> \(leftNodes)")
//        print("right -> \(rightNodes)")
//        return false
//    }
//
//    func traverseLeftSubTree(node: TreeNode?, nodes: inout [Int]) {
//        if node != nil {
//            traverseLeftSubTree(node: node?.left, nodes: &nodes)
//            nodes.append(node?.val ?? 0)
//            traverseLeftSubTree(node: node?.right, nodes: &nodes)
//        }
//    }
//
//    func traverseRightSubTree(node: TreeNode?, nodes: inout [Int]) {
//        if node != nil {
//            traverseRightSubTree(node: node?.right, nodes: &nodes)
//            nodes.append(node?.val ?? 0)
//            traverseRightSubTree(node: node?.right, nodes: &nodes)
//        }
//    }
//}
