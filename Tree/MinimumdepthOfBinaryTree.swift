// https://leetcode.com/problems/minimum-depth-of-binary-tree/description/
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
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var left = minDepth(root?.left)
        var right = minDepth(root?.right)
        if left == 0 || right == 0 {
            return 1 + left + right
        }else {
            return 1 + min(left,right)
        }
    }
}
