// MARK: Reverse Linked List
// Leetcode : https://leetcode.com/problems/reverse-linked-list/

var arr = [2,4,3]

class ListNode {
    var val : Int
    var next : ListNode?

    init(_ val : Int) {
        self.val = val
    }
}

func printLinkList(_ head : ListNode? = nil) {
    var head1 = head
    while(head1 != nil) {
        if head1?.next == nil {
            print(head1?.val ?? 0)
        }else {
            print(head1?.val ?? 0, terminator: " --> ")
        }
        head1 = head1?.next
    }
}

func createLinkList(arr : [Int]) -> ListNode? {
    var fNode : ListNode?
    var lNode : ListNode?
    for i in arr {
        var newNode = ListNode(i)
        if fNode == nil {
            fNode = newNode
            lNode = newNode
        }else {
            lNode?.next = newNode
            lNode = newNode
        }
    }
    return fNode
}

// *********************************************************************
func reverseLinkedList(_ head : ListNode?) -> ListNode? {
    var prev : ListNode? = nil
    var curt : ListNode? = head
    var sec : ListNode? = nil
    while(curt != nil) {
        sec = curt?.next
        curt?.next = prev
        prev = curt
        curt = sec
    }
    return prev
}
