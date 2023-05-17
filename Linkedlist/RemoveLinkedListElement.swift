// MARK: Remove linked list duplicate element

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    var dummyNode : ListNode? = ListNode(0)
    dummyNode?.next = head
    var prev : ListNode? = dummyNode
    var curt : ListNode? = head
    while(curt != nil) {
        if curt?.val == val {
          prev?.next = curt?.next
        }else {
           prev = curt
        }
        curt = curt?.next
    }
    return dummyNode?.next
}
