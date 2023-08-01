/*
Input: nums = [1,1,2]
Output: 2
*/

func removeDuplicates(_ nums: inout [Int]) -> Int {
   nums = Array(Set(nums))
   nums.sort()
   return nums.count    
}
