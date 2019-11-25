class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var lastItem = -1
        var count = 0
        let length = nums.count
        for (index, item) in nums.enumerated() {
            if (lastItem != item || index == 0) {
                count = count + 1
            }
            if (lastItem == item && index != 0) {
                var currentIndex = count
                while currentIndex + 1 < length {
                var tempItem = 0
                tempItem = nums[currentIndex]
                nums[currentIndex] = nums[currentIndex + 1]
                nums[currentIndex + 1] = tempItem
                currentIndex = currentIndex + 1
                }
            }
            lastItem = item
        }
        return count
    }
}