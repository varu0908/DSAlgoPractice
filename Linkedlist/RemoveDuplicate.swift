// MARK: Remove Duplicate

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        var last: ListNode?
        
        while current != nil {
            if last != nil && current!.val == last!.val {
                last?.next = current?.next
            } else {
                last = current
            }
            current = current?.next
        }
        return head
    }
