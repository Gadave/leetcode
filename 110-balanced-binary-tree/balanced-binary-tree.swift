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
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard 
        let left = depth(root?.left),
        let right = depth(root?.right)
        else { return false }

        if abs(left - right) > 1 { return false }
        return true
    }

    func depth(_ node: TreeNode?) -> Int? {
        guard let node else { return 0 }
        
        guard
        let left = depth(node.left),
        let right = depth(node.right),
        abs(left - right) <= 1 
        else { return nil }

        return 1 + max(left, right)
    }
}