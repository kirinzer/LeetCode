class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
            nums = nums.filter { $0 != 0 }
            while nums.count < count {
                nums.append(0)
            }
    }
}