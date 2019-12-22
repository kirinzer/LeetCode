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
    func maxDepth(_ root: TreeNode?) -> Int {
        var stack = Array<TreeNode>()
        var depthStack = Array<Int>() // save node and depth relation
        var depth = 0
        guard let root = root else {
            return 0
        }
        stack.append(root)
        depthStack.append(1)
        depth = 0
        while stack.count > 0 {
            if let n = stack.last {
                let currentDepth = depthStack.last!
                stack.removeLast()
                depthStack.removeLast()
                depth = max(depth, currentDepth)
                if let left = n.left {
                    stack.append(left)
                    depthStack.append(currentDepth + 1)
                }
                if let right = n.right {
                    stack.append(right)
                    depthStack.append(currentDepth + 1)
                }
            }
        }
        return depth
    }
}