class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        var index = nums.count - 1
        while index >= 0 {
            nums[index] += 1
            nums[index] %= 10
            if nums[index] != 0 {
                return nums
            }
            index -= 1
        }
        nums.insert(1, at: 0)
        return nums
    }
}