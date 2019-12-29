class Solution {
    func isPossibleDivide(_ nums: [Int], _ k: Int) -> Bool {
        if nums.count % k > 0 {
            return false
        }
        let sortedArray = nums.sorted()
        var hash = Dictionary<Int, Int>()
        for num in nums {
            var count = hash[num] ?? 0
            count += 1
            hash[num] = count
        }
        let maxGroup = nums.count / k
        var group = 0
        for num in sortedArray {
            let numCount = hash[num] ?? 0
            if numCount == 0 {
                continue
            }
            for i in num...(num + k - 1) {
                var iCount = hash[i] ?? 0
                if iCount == 0 {
                    return false
                }
                iCount = iCount - 1
                hash[i] = iCount
            }
            group += 1
            if group == maxGroup {
                return true
            }
        }
        return false
    }
}