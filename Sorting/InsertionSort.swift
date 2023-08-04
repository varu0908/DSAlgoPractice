var ar = [5,4,3,2,1]
func insertionSort(ar : inout [Int]) {
    var i = 0
    while(i < ar.count) {
        var j = i - 1
        var temp = ar[i]
        while(temp < ar[j] && j >= 0) {
            ar[j + 1] = ar[j]
            j -= 1
        }
        ar[j+1] = temp
        i += 1
    }
}
insertionSort(ar: &ar)
