//MARK: Reverse String

func reverseString(_ arr : [String]) -> [String] {
    var arr1 = arr
    var revStr = [String]()
    for _ in arr1 {
        if !arr1.isEmpty {
            var ch = arr1.removeLast()
            revStr.append(ch)
        }
    }
    return revStr
}
