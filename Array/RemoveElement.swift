/*
Input: nums = [0,1,2,2,3,0,4,2], val = 2
Output: 5, nums = [0,1,4,0,3,_,_,_]
*/

var num = [0,1,2,2,2,2,3,0,4,2]
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var i = 0
    while(i < nums.count) {
        if nums[i] == val {
            nums.remove(at: i)
        } else {
            i += 1
        }
    }
    return nums.count
}
var re = removeElement(&num, 2)
print(re)

//Output: 5, nums = [0,1,4,0,3,_,_,_]
