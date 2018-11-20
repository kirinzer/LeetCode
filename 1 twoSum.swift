
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        for (index, num) in nums.enumerated() {
            if (dic[num] != nil && dic[num] != index) {
                return [dic[num]!,index]
            }
            dic[target-num] = index;
        }
        return [0]
    }
}