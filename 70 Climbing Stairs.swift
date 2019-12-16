class Solution {
    func climbStairs(_ n: Int) -> Int {
        var result = 0
        var floor = 0
        var f1 = 1
        var f2 = 1
        while floor < n {
            floor += 1
            if (floor >= 2) {
                let temp = f1
                f1 = f2
                f2 = temp + f2
            }
            result = f2
        }
        return result
    }
}