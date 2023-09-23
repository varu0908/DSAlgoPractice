class Node<T> {
    var data : T
    var next : Node<T>?
    
    init(data : T) {
        self.data = data
        self.next = nil
    }
}
class LinkedList<T> {
    var head : Node<T>?
    var tail : Node<T>?
    
    func add(_ val : T) {
        var newNode = Node(data: val)
        if head == nil && tail == nil {
            head = newNode
            tail = newNode
        }else {
            tail?.next = newNode
            tail = tail?.next
        }
    }
    
    func addfirst(_ val : T) {
        var newNode = Node(data: val)
        newNode.next = head
        head = newNode
    }
    
    func removeLast() {
        var tempHead = head
        while(tempHead?.next !== tail) {
            tempHead = tempHead?.next
        }
        tempHead?.next = nil
    }
    
    func removeFirst() {
        var tempHead = head
        head = head?.next
        tempHead?.next = nil
    }
    
    func printLinkedList() {
        var tempHead = head
        while(tempHead != nil) {
            print("\(tempHead!.data)", terminator: "->")
            tempHead = tempHead?.next
        }
    }
}
