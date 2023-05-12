// MARK : Check Linked List Cycle

// Leetcode : https://leetcode.com/problems/linked-list-cycle/

func hasCycle(_ head: ListNode?) -> Bool {
    var temp : ListNode? = head
    var s = Set<ObjectIdentifier>()
    while(temp != nil) {
        let id = ObjectIdentifier(temp!)
        if s.contains(id) {
            return true
        }else {
            s.insert(id)
            temp = temp?.next
        }
    }
    return false
}
