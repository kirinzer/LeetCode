class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var ans = nums[0]
        var sum = 0
        for num in nums {
            if sum > 0 {
                sum = sum + num
            } else {
                sum = num
            }
            ans = max(ans, sum)
        }
        return ans
    }
}