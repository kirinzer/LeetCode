class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        for j in J {
            for s in S {
                if j == s {
                    count = count+1
                }
            }
        }
        return count
    }
}