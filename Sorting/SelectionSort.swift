var ar = [5,3,2,1,0]
func sortWithSelectionSort(_ ar : inout [Int]) {
    var i = 0
    while(i < ar.count) {
        var minIndex = findMin(i: i, ar)
        var temp = ar[i]
        ar[i] = ar[minIndex]
        ar[minIndex] = temp
        i += 1
    }
}

func findMin(i : Int, _ ar : [Int]) -> Int {
    var p = i;
    var min = ar[p]
    var minIndex = p;
    while(p < ar.count) {
        if ar[p] < min {
            min = ar[p]
            minIndex = p;
        }
        p += 1
    }
    return minIndex
}
findMin(i: 0, ar)
sortWithSelectionSort(&inSort)
