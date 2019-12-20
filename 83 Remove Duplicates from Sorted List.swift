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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }
        guard let next = head.next else {
            return head
        }
        head.next = self.deleteDuplicates(head.next)
        if head.val == next.val {
            return head.next
        }
        return head
    }
}