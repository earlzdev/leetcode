package kotlinTasks.easy

//  Example:
//var ti = TreeNode(5)
//var v = ti.`val`
//  Definition for a binary tree node.
//class TreeNode(var `val`: Int) {
//    var left: TreeNode? = null
//    var right: TreeNode? = null
//}

//solved
//class PathSum {
//
//    fun hasPathSum(root: TreeNode?, targetSum: Int): Boolean {
//        if(root == null)
//            return false
//
//        val result = targetSum - root.`val`
//        return (result == 0 && isLeaf(root)) || hasPathSum(root.left, result) || hasPathSum(root.right, result)
//    }
//
//    fun isLeaf(node: TreeNode) : Boolean = node.left == null && node.right == null
//}