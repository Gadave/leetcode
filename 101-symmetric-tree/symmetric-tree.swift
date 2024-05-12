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
        isMirror(root?.left, root?.right)
    }

    func isMirror(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if let left {
            guard let _ = right else { return false }
        }
        if let right {
            guard let _ = left else { return false }
        }

        guard 
            let left,
            let right
        else { return true }
        
        if left.val != right.val { return false }

        return isMirror(left.left, right.right) && isMirror(left.right, right.left)
    }
}