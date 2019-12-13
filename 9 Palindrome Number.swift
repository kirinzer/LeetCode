class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if (x < 0) {
            return false
        }
        let str = "\(x)"
        let rev = String(str.reversed())
        if (rev == str) {
            return true
        }
        return false
    }
}