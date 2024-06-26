// https://leetcode.com/problems/same-tree/

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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        } else if (p == nil || q == nil){
            return false
        } else {
            if p!.val == q!.val {
                var leftCheck = isSameTree(p?.left, q?.left)
                if !leftCheck {
                    return false
                }
                var rigthCheck = isSameTree(p?.right, q?.right)
                return rigthCheck
            } else {
                return false
            }
        }
    }
}
