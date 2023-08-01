// Reverse Array in same Array
func reverArray(ar : inout [Int]) -> [Int] {
    var arr = ar
    var i = 0
    var j = arr.count - 1
    while(i <= j) {
        var temp = arr[j]
        arr[j] = arr[i]
        arr[i] = temp
        j -= 1
        i += 1
    }
    return arr
}
reverArray(ar : &arr)
