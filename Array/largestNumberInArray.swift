func largestNumInArray(_ ar : [Int]) -> Int {
    var arr = ar
    var i = 0
    var max = Int.min
    while(i < arr.count) {
        if arr[i] > max {
            max = arr[i]
        }
        i += 1
    }
    return max
}
var arr = [-13,-3,-6]
largestNumInArray(arr)
