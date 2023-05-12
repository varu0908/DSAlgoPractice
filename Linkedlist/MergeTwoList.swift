//MARK: Merge 2 Sorted List
// Leet Code : https://leetcode.com/problems/merge-two-sorted-lists/

var arr1 = [Int]()
var arr2 = [0]

class Node {
    var data : Int
    var nextPtr : Node?

    init(_ data : Int) {
        self.data = data
    }
}

func printLinkList(_ head : Node? = nil) {
    var head1 = head
    while(head1 != nil) {
        if head1?.nextPtr == nil {
            print(head1?.data ?? 0)
        }else {
            print(head1?.data ?? 0, terminator: " --> ")
        }
        head1 = head1?.nextPtr
    }
}

func createLinkList1(arr : [Int]) -> Node? {
    var fNode : Node?
    var lNode : Node?
    for i in arr {
        var newNode = Node(i)
        if fNode == nil {
            fNode = newNode
            lNode = newNode
        }else {
            lNode?.nextPtr = newNode
            lNode = newNode
        }
    }
    return fNode
}

func createLinkList2(arr : [Int]) -> Node? {
    var fNode : Node?
    var lNode : Node?
    for i in arr {
        var newNode = Node(i)
        if fNode == nil {
            fNode = newNode
            lNode = newNode
        }else {
            lNode?.nextPtr = newNode
            lNode = newNode
        }
    }
    return fNode
}

// *******************************************************************************
func mergeSortedList(_ head1 : Node?, _ head2 : Node?) -> Node? {
    var temp1 : Node? = head1
    var temp2 : Node? = head2
    var newHead : Node? = nil
    var newTail : Node? = nil
    while(temp1 != nil && temp2 != nil) {
        if (temp1!.data) < (temp2!.data) {
            if newHead == nil {
                newHead = temp1
                newTail = temp1
            }else {
                newTail!.nextPtr = temp1
                newTail = temp1
            }
            temp1 = temp1?.nextPtr
        }else {
            if newHead == nil {
                newHead = temp2
                newTail = temp2
            }else {
                newTail?.nextPtr = temp2
                newTail = temp2
            }
            temp2 = temp2?.nextPtr
        }
    }
    
    if temp1 != nil {
        newTail?.nextPtr = temp1
    }
    
    if temp2 != nil {
        newTail?.nextPtr = temp2
    }
    return newHead
}


// Call
var h1 = createLinkList1(arr: arr1) 
var h2 = createLinkList2(arr: arr2)
var mergeLinkList = mergeSortedArray(h1, h2)
printLinkList(mergeLinkList)

