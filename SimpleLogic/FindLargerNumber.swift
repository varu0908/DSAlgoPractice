func findLargestNum(num1 : Int, num2 : Int, num3 : Int) -> Int {
    var maxNum = 0
    if num1 < num2 {
        maxNum = num2
    }else {
        maxNum = num1
    }
    if maxNum > num3 {
        return maxNum
    }else {
        return num3
    }
}
findLargestNum(num1: -5, num2: -3, num3: -1)

// O/P -> -1
