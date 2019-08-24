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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prevNode: ListNode? = nil
        var head = head
        while let node = head {
            head = node.next
            node.next = prevNode
            prevNode = node
        }
        return prevNode
    }
}