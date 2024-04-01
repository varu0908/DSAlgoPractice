protocol myQueueProtocol {
    associatedtype Item
    mutating func insert(_ value : Item) -> [Item]
    mutating func removeFirst() -> Item?
    func count() -> Int
}


class myQueue<T> : myQueueProtocol {
    
    private var queueArr = [T]()
    typealias Item = T
    
    func insert(_ value : Item) -> [T]{
        queueArr.append(value)
        return queueArr
    }
    
    func removeFirst() -> T? {
        if queueArr.count >= 1 {
            return queueArr.remove(at: 0)
        }
        return nil
    }
    
    func count() -> Int {
        return queueArr.count
    }
}

let obj = myQueue<Int>()
for i in 1...5 {
    obj.insert(i)
}

while (obj.count() > 0) {
    print(obj.removeFirst()!)
}
