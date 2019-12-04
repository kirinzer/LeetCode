class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = Dictionary<Int, Array<Int>>()
        let count = nums.count
        for (index, num) in nums.enumerated() {
            let array = dic[num]
            if var a = array {
                a.removeLast()
                a.append(index)
                dic[num] = a
            } else {
                var a = Array<Int>()
                a.append(index)
                a.append(index)
                dic[num] = a
            }
        }
        if let obj = dic[target] {
            return obj
        }
        return [-1,-1]
    }
}