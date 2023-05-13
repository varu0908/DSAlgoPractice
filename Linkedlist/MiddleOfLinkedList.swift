// MARK: Middle Of Linked List
// Leetcode : https://leetcode.com/problems/middle-of-the-linked-list/

func middleOfLinkedList(_ head : ListNode?) -> ListNode? {
    var slowPtr : ListNode? = head
    var fastPtr : ListNode? = head
    while(fastPtr?.next != nil) {
        fastPtr = fastPtr?.next?.next
        slowPtr = slowPtr?.next
    }
    return slowPtr
}
