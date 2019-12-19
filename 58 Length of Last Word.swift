class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var length = 0
        for c in s.reversed() {
            if (String(c) == " ") {
                if (length == 0) {
                    continue
                } else {
                    break
                }
            }
            length += 1
        }
        return length
    }
}