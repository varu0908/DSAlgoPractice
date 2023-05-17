MARK: Convert Binary into Decimal from Linked list

func getDecimalValue(_ head: ListNode?) -> Int {
    var res = 0
    var temp : ListNode? = head
    while temp != nil {
       res = (res * 2) + temp!.val
       temp = temp?.next
    }
    return res
}
