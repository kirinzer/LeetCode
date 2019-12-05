class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var position = 0
        for num in nums {
            if (target < num || target == num) {
                break
            }
            if (target > num) {
                position += 1
            }
        }
        return position
    }
}