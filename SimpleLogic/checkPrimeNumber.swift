func checkPrimeNum(num : Int) -> Bool {
    if num == 2 {
        return true
    }
    for i in 2...num {
        if num % i == 0 {
            return false
        }
    }
    return true
}
checkPrimeNum(num: 10)
