class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        var size = nums.count
        while i < size {
            if nums[i] == val {
                var j = nums.count - 1
                while j > i && nums[j] == val {
                    j -= 1
                }
                nums.swapAt(i, j)
                size = j
            }
            i += 1
        }
        return size
    }
}