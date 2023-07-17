//
//  108. Convert Sorted Array to Binary Search Tree.swift
//  leetcodeSwiftC
//
//  Created by earl on 13.05.2023.
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
//  }
 
//Input: nums = [-10,-3,0,5,9]
//nums = [1,3]
//Output: [0,-3,9,-10,null,5]

class ConvertSortedArrayToBst {
    
    // decision from answers in leetcode
//    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
//            guard !nums.isEmpty else { return nil }
//
//            let median = nums.count / 2
//            return .init(
//                nums[median],
//                sortedArrayToBST(.init(nums[0..<median])),
//                sortedArrayToBST(.init(nums[median+1..<nums.count]))
//            )
//        }
    
    
    // my decision not right in leetcode
//    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
//        var root = 0
//        if nums.count % 2 == 1 {
//            root = nums[nums.count / 2]
//        } else {
//            root = nums[(nums.count / 2)]
//        }
//        var rootNode = TreeNode.init(root)
//        var nodesNums: [Int] = nums
//        var nodes: [TreeNode?] = []
//        nodesNums.removeAll(where: { $0 == root })
//        for i in nodesNums {
//            nodes.append(TreeNode.init(i))
//        }
//        for i in nodes {
//            self.insertNode(currentNode: rootNode, newNode: i)
//        }
//        return rootNode
//    }
//
//    func insertNode(currentNode: TreeNode?, newNode: TreeNode?) {
//        if newNode?.val ?? 0 < currentNode?.val ?? 0 {
//            if currentNode?.left == nil {
//                currentNode?.left = newNode
//            } else {
//                self.insertNode(currentNode: currentNode?.left, newNode: newNode)
//            }
//        }
//        if newNode?.val ?? 0 > currentNode?.val ?? 0 {
//            if currentNode?.right == nil {
//                currentNode?.right = newNode
//            } else {
//                self.insertNode(currentNode: currentNode?.right, newNode: newNode)
//            }
//        }
//    }
}
