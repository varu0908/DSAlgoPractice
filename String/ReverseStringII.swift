//MARK: Reverse Array of String in same Array

func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    while(left < right) {
        var temp = s[left]
        s[left] = s[right]
        s[right] = temp
        left = left + 1
        right = right - 1
    }
}

// **************** Second Logic ********************
func reverseString(_ s: inout [Character]) {
	var left = 0
	var right = s.count - 1
	while left < right {
		s.swapAt(left, right)
		left += 1
		right -= 1
	}
}
