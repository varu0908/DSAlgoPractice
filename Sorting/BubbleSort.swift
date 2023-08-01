var arr = [1,5,3,4,2,6]
func bubbleSortForrPreArray(ar : inout [Int]) {
    var i = 0
    while(i < ar.count) {
        var j = 0
        while(j < ar.count - i - 1) {
            if ar[j] > ar[j+1] {
                var temp = ar[j]
                ar[j] = ar[j+1]
                ar[j+1] = temp
            }
            j += 1
        }
        i += 1
    }
}
bubbleSortForrPreArray(ar: &arr)

// O/P -> [1,2,3,4,5,6]
