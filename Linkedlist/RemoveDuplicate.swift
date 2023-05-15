// MARK: Remove Duplicate
// ************************** 1st Logic ******************************
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

// ************************** 2nd Logic ****************************

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
       var curt : ListNode? = head
        while(curt != nil) {
            var temp = curt?.next
            while(temp != nil && curt?.val == temp?.val) {
                temp = temp?.next
            }
            curt?.next = temp
            curt = temp
        }
        return head
    }
}
