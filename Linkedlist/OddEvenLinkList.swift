// MARK: Odd Even Link List
// Leetcode : https://leetcode.com/problems/odd-even-linked-list/

func oddEven(_ head : ListNode?) -> ListNode? {
    var oHead = head
    var oTail = head
    var eHead = head?.next
    var eTail = head?.next
    while(oTail != nil && eTail != nil) {
        oTail?.next = eTail?.next
        oTail = oTail?.next
        eTail?.next = oTail?.next
        eTail = eTail?.next
    }
    oTail?.next = eHead
    return oHead
}
