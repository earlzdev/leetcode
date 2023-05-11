//
//  SymmetricTree.swift
//  leetcodeSwiftC
//
//  Created by earl on 10.05.2023.
//

import Foundation


// Definition for a binary tree node.
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
//class Solution {
//
//    func isSymmetric(_ root: TreeNode?) -> Bool {
//        var leftSubTreeNodes: [Int?] = []
//        var rightSubTreeNodes: [Int?] = []
//        traverseLeftSubTree(subTree: root?.left, nodesList: &leftSubTreeNodes)
//        traverseRightSubTree(subTree: root?.right, nodesList: &rightSubTreeNodes)
//        leftSubTreeNodes.insert(root?.left?.val ?? 0, at: 0)
//        rightSubTreeNodes.insert(root?.right?.val ?? 0, at: 0)
//        print(leftSubTreeNodes)
//        print(rightSubTreeNodes)
//        return leftSubTreeNodes == rightSubTreeNodes
//    }
//
//    func traverseLeftSubTree(subTree: TreeNode?, nodesList: inout [Int?]) {
//        if subTree != nil {
//            if subTree?.left != nil {
//                nodesList.append(subTree?.left?.val ?? 0)
//                traverseLeftSubTree(subTree: subTree?.left, nodesList: &nodesList)
//            } else {
//                nodesList.append(nil)
//            }
//            if subTree?.right != nil {
//                nodesList.append(subTree?.right?.val ?? 0)
//                traverseLeftSubTree(subTree: subTree?.right, nodesList: &nodesList)
//            } else {
//                nodesList.append(nil)
//            }
//        }
//    }
//
//    func traverseRightSubTree(subTree: TreeNode?, nodesList: inout [Int?]) {
//        if subTree != nil {
//            if subTree?.right != nil {
//                nodesList.append(subTree?.right?.val ?? 0)
//                traverseRightSubTree(subTree: subTree?.right, nodesList: &nodesList)
//            } else {
//                nodesList.append(nil)
//            }
//            if subTree?.left != nil {
//                nodesList.append(subTree?.left?.val ?? 0)
//                traverseRightSubTree(subTree: subTree?.left, nodesList: &nodesList)
//            } else {
//                nodesList.append(nil)
//            }
//        }
//    }
//}
