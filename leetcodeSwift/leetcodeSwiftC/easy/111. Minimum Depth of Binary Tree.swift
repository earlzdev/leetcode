//
//  111. Minimum Depth of Binary Tree.swift
//  leetcodeSwiftC
//
//  Created by earl on 15.05.2023.
//

import Foundation

//Definition for a binary tree node.
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
 

class MinimumDepthOfBinaryTree {
    
    var leftCount = 0
    var rightCount = 0

    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var left = depth(root: root?.left, counter: &leftCount)
        var right = depth(root: root?.right, counter: &rightCount)
        print(leftCount)
        print(rightCount)
        if min(leftCount, rightCount) == 0 {
            return max(leftCount, rightCount) + 1
        }
        return min(leftCount, rightCount) + 1
    }

    func depth(root: TreeNode?, counter: inout Int) -> Int {
        if root != nil {
            if root?.left != nil {
                counter += 1
                depth(root: root?.left, counter: &counter)
            } else if root?.right != nil {
                counter += 1
                depth(root: root?.right, counter: &counter)
            }
        }
        return counter
    }
}




