// Sum of digit of any number
func sumOfDigit(_ inp : Int) -> Int {
    var num = inp
    var sum = 0
    while (num != 0) {
        var rem = num % 10
        sum += rem
        num = num / 10
    }
    return sum
}
sumOfDigit(135)
// O/P -> 9
