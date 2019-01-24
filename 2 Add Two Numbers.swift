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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let res:ListNode = ListNode(-1)
        //用于存放结果指针
        var cur:ListNode! = res
        //用于当前指针
        var carry:Int = 0
        //需要进位
        
        var l01 = l1
        var l02 = l2
        
        while (l01 != nil || l02 != nil) {
        let n1:Int = (l01 != nil) ? l01!.val : 0
        let n2:Int = (l02 != nil) ? l02!.val : 0
        let sum:Int = n1+n2+carry
        carry = sum / 10
        cur.next = ListNode(sum%10)
        cur = cur.next
        if (l01 != nil) {
            l01 = l01?.next
        }
        if (l02 != nil) {
            l02 = l02?.next
        }
        }
        if (carry != 0) {
        //最后再次进位
        cur.next = ListNode(1)
        }

        return res.next
    }
}