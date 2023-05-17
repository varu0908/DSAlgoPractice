//MARK: Check Linked List is Palindrome or not

func isPalindrome(_ head: ListNode?) -> Bool {
    return check(head)
}

func check(_ head : ListNode?) -> Bool {
    var head = head
    var slowPtr : ListNode? = head
    var fastPtr : ListNode? = head?.next
    while(fastPtr != nil && fastPtr?.next != nil) {
        slowPtr = slowPtr?.next
        fastPtr = fastPtr?.next?.next
    }
    var head2 = reverse(slowPtr?.next)
    slowPtr?.next = nil
    printLinkList(head)
    printLinkList(head2)
    
    while(head != nil && head2 != nil) {
        if head?.val != head2?.val {
            return false
        }
        head = head?.next
        head2 = head2?.next
    }
    return true
}

func reverse(_ head : ListNode?) -> ListNode? {
    var p : ListNode? = nil
    var c : ListNode? = head
    var s : ListNode? = nil
    while(c != nil) {
        s = c?.next
        c?.next = p
        p = c
        c = s
    }
    return p
}
