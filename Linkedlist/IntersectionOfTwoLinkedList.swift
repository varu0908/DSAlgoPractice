// MARK: Intersection of two linked list

func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var tempA : ListNode? = headA
    var tempB : ListNode? = headB
    var lenA = findLenghtOfLinkedList(headA)
    var lenB = findLenghtOfLinkedList(headB)
    if lenA > lenB {
        for _ in 0..<(lenA-lenB) {
            tempA = tempA?.next
        }
    }else if lenB > lenA {
        for _ in 0..<(lenB-lenA) {
            tempB = tempB?.next
        }
    }
    while (tempA != nil) {
        if tempA === tempB {
            return tempA
        }
        tempA = tempA?.next
        tempB = tempB?.next
    }
    return nil
}

func findLenghtOfLinkedList(_ head : ListNode?) -> Int {
    var length = 0
    var tail : ListNode? = head
    while(tail != nil) {
        length += 1
        tail = tail?.next
    }
    return length
}
