// MARK: Duplicate Contain

func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict = [Int : Int]()
    for i in nums {
        if dict[i] == nil {
            dict.updateValue(1, forKey: i)
        }else {
            dict.updateValue((dict[i] ?? 0) + 1, forKey: i)
        }
    }
    for pair in dict.enumerated() {
        if pair.element.value > 1 {
            return true
        }
    }
    return false
}
