/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var nodes = [ListNode]()
        return checkNode(head, nodes: &nodes)
    }

    func checkNode(_ head: ListNode?, nodes: inout [ListNode]) -> Bool {
        guard let head, let next = head.next else { return false }
        if nodes.contains(where: { $0 === next }) {
            return true
        }
        nodes.append(next)
        return checkNode(next, nodes: &nodes)
    }
}