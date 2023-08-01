func factorial(num : Int) -> Int {
    var fact = 1
    for i in 1...num {
        fact *= i
    }
    return fact
}
factorial(num: 5)
