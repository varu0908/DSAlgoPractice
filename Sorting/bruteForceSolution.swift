var ar = [5,3,2,1,0]
func sortArray(_ ar : inout [Int]) {
    var i = 0
    var j = 0
    while(i < ar.count) {
        j = 0
        while(j < ar.count) {
            if ar[i] < ar[j] {
                var temp = ar[i]
                ar[i] = ar[j]
                ar[j] = temp
            }
            j += 1
        }
        i += 1
    }
}
