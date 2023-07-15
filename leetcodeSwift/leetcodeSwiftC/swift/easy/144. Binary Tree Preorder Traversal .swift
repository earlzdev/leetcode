//
//  144. Binary Tree Preorder Traversal .swift
//  leetcodeSwiftC
//
//  Created by earl on 25.05.2023.
//

import Foundation


// solved
//class BinaryTreePreorderTraversal {
//
//    func preorderTraversal(_ root: TreeNode?) -> [Int] {
//            if root == nil {
//                return []
//            }
//            var nodesValues: [Int] = []
//            nodesValues.append(root?.val ?? 0)
//            traverseTree(root: root, nodes: &nodesValues)
//            print(nodesValues)
//        nodesValues.reverse()
//            return nodesValues
//        }
//
//
//        func traverseTree(root: TreeNode?, nodes: inout [Int]) {
//            if root != nil {
//                if root?.left != nil {
//                    nodes.append(root?.left?.val ?? 0)
//                    traverseTree(root: root?.left, nodes: &nodes)
//                }
//                if root?.right != nil {
//                    nodes.append(root?.right?.val ?? 0)
//                    traverseTree(root: root?.right, nodes: &nodes)
//                }
//            }
//        }
//}
