class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        var dic = Dictionary<Int,Int>()
        for (index, a) in A.enumerated() {
            if (dic[a] == nil) {
                dic[a] = index
            } else {
                return a
            }
        }
        fatalError()
    }
}