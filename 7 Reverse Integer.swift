class Solution {
    func reverse(_ x: Int) -> Int {
    var num = x
    var intMax = 2147483647
    var intMin = -2147483648
    var rev = 0
    while (num != 0) {
        let pop = num % 10
        num /= 10 // pop
        if (rev > intMax/10 || (rev == intMax/10 && pop > 7)) {
            return 0
        }
        if (rev < intMin/10 || (rev == intMin/10 && pop < -8)) {
            return 0
        }
        rev = rev * 10 + pop
    }
    return rev
    }
}