class Solution {
    func reverseString(_ s: inout [Character]) {
        for i in (0...s.count/2) {
            if (i<s.count-i-1) {
                let temp = s[i]
                s[i] = s[s.count-i-1]
                s[s.count-i-1] = temp
            }
        }
    }
}