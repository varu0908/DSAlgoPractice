// https://leetcode.com/problems/merge-two-binary-trees/description/

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
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        if root1 == nil && root2 == nil {
            return nil
        }else if root1 != nil && root2 == nil {
            return root1
        }else if root2 != nil && root1 == nil {
            return root2
        }
        var newNode : TreeNode? = TreeNode(root1!.val + root2!.val)
        newNode?.left = mergeTrees(root1?.left, root2?.left)
        newNode?.right = mergeTrees(root1?.right, root2?.right)
        return newNode
    }
}
