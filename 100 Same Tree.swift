/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p?.val == q?.val else {
            return false
        }
        guard let p = p, let q = q else {
            return true
        }
        return isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
    }
}