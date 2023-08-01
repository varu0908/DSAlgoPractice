/*
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int : Int]()
    var res = [Int]()
    for (i,num) in nums.enumerated() {
       dict.updateValue(i , forKey: num)
    }
    for (i,num) in nums.enumerated() {
        var needToFind = target - num
        if dict[needToFind] != nil && i != dict[needToFind]{
            res.append(i)
            res.append(dict[needToFind] ?? 0)
            break
        }
    }
    return res
}
