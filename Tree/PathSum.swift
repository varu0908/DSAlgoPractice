// https://leetcode.com/problems/path-sum/
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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        if(root == nil){
            return false
        }
        if(root?.left == nil && root?.right == nil){
            return root!.val == targetSum
        }
        var remain = targetSum - root!.val
        return hasPathSum(root?.left, remain) || 
               hasPathSum(root?.right, remain)
    }
}
