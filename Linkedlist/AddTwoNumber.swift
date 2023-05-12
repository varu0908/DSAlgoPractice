//MARK: Add Two Numbers

// Leetcode : https://leetcode.com/problems/add-two-numbers/description/

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var temp1 = l1
        var temp2 = l2
        var newHead : ListNode? = nil
        var newTail : ListNode? = nil
        var carry = 0
        while(temp1 != nil || temp2 != nil) {
            var add = 0
            if (temp1 != nil) {
                add = add + temp1!.val
                temp1 = temp1?.next
            } 
            if (temp2 != nil) {
                add = add + temp2!.val
                temp2 = temp2?.next
            }
            add = add + carry

            if add > 9 {
                if newHead == nil {
                    var newNode = ListNode(add % 10)
                    newHead = newNode
                    newTail = newNode
                }else {
                    var newNode = ListNode(add % 10)
                    newTail?.next = newNode
                    newTail = newNode
                }
                carry = 1
            }else {
                if newHead == nil {
                    var newNode = ListNode(add)
                    newHead = newNode
                    newTail = newNode
                }else {
                    var newNode = ListNode(add)
                    newTail?.next = newNode
                    newTail = newNode
                }
                carry = 0
            }
        }
        if carry > 0 {
            var node = ListNode(carry)
            newTail?.next = node
            newTail = node
        }
        return newHead
    }
