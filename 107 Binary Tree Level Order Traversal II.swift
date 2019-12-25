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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var stack = Array<TreeNode>()
        var depthStack = Array<Int>() // save node and depth relation
        var levelArray = Array<Array<Int>>()
        guard let root = root else {
            return levelArray
        }
        stack.append(root)
        depthStack.append(0)
        while stack.count > 0 {
            if let n = stack.last {
                let currentDepth = depthStack.last!
                print(currentDepth)
                if (levelArray.count <= currentDepth) {
                    let level = Array<Int>()
                    // insert at head
                    levelArray.insert(level, at: 0)
                }
                levelArray[levelArray.count - currentDepth - 1].append(n.val)
                stack.removeLast()
                depthStack.removeLast()
                if let right = n.right {
                    stack.append(right)
                    depthStack.append(currentDepth+1)
                }
                if let left = n.left {
                    stack.append(left)
                    depthStack.append(currentDepth+1)
                }
            }
        }
        return levelArray
    }
}