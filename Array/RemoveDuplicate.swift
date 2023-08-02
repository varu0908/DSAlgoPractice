/*
Input: nums = [1,1,2]
Output: 2
*/
var num = [0,1,2,2,2,2,3,0,4,2]
func removeDuplicates(_ nums: inout [Int]) -> Int {
   nums = Array(Set(nums))
   nums.sort()
   return nums.count    
}

// Second Approach
var num = [0,1,2,2,2,2,3,0,4,2]
func removeDuplicateElement(_ nums: inout [Int]) -> Int{
    var newNum = [Int]()
    var dict = [Int : Int]()
    for i in nums {
        if dict[i] == nil {
            dict.updateValue(1, forKey: i)
        }else {
            dict.updateValue((dict[i] ?? 0) + 1, forKey: i)
        }
    }

    for (i,dict) in dict.enumerated() {
        newNum.append(dict.key)
    }
    nums = newNum
    return nums.count
}
removeDuplicateElement(&num)

// O/P -> [0,2,3,1,4]
