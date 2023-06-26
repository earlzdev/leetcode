//
//  257. Binary Tree Paths.swift
//  leetcodeSwiftC
//
//  Created by earl on 23.06.2023.
//

import Foundation

class BinaryTreePaths {

    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var returnArr = [String]()
             if root == nil {
                 return []
             }
             if root?.left == nil && root?.right == nil {
                 return ["\(root!.val)"]
             }

             if let left = root?.left {
                 let lArr = binaryTreePaths(root?.left)
                 for item in lArr {
                     returnArr.append("\(root!.val)->\(item)")
                 }
             }
             if let right = root?.right {
                 let rArr = binaryTreePaths(root?.right)
                 for item in rArr {
                     returnArr.append("\(root!.val)->\(item)")
                 }
             }
             return returnArr
    }
}
