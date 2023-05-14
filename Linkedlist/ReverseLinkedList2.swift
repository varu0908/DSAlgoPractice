// MARK : Reverse Linked List with range


func reverseLLWithRange(_ head : ListNode? , _ left : Int, _ right : Int) -> ListNode? {
    var dummyNode = ListNode(0)
    dummyNode.next = head
    var temp : ListNode? = dummyNode
    var leftBreakLink : ListNode? = nil
    var rightBreakLink : ListNode? = nil
    var revHead : ListNode? = nil
    var count = 0
    while(temp != nil) {
        count = count + 1
        if count == left {
            leftBreakLink = temp
            revHead = leftBreakLink?.next
            leftBreakLink?.next = nil
            temp = revHead
        }
        if count == right + 1 {
            rightBreakLink = temp?.next
            temp?.next = nil
        }
        
        if (ObjectIdentifier(temp!) != ObjectIdentifier(revHead!)) {
            temp = temp?.next
        }
    }
    var revHeadAfRev = reverse(revHead)
    leftBreakLink?.next = revHeadAfRev
    revHead?.next = rightBreakLink
    return dummyNode.next
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
