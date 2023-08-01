func oddEven(num : Int) -> String {
    if (num & 1 == 0) {
        return "\(num) is even"
    }else {
        return "\(num) is odd"
    }
}
oddEven(num: 2)
