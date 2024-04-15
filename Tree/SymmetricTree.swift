// https://leetcode.com/problems/symmetric-tree/description/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return isMirror(root?.left, root?.right)
    }

    func isMirror(_ rootLeft : TreeNode?,_ rootRight : TreeNode?) -> Bool {
        if rootLeft == nil && rootRight == nil {
            return true
        }
        else if rootLeft == nil || rootRight == nil {
            return false
        } 
        else {
            if !(rootLeft!.val == rootRight!.val && isMirror(rootLeft?.left,rootRight?.right) && isMirror(rootLeft?.right, rootRight?.left)) {
                return false
            }
        }
        return true
    }
}
