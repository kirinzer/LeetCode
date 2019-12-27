class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var A = Array<Character>(a)
        var B = Array<Character>(b)
        let zeroNumber = b.count - a.count
        var header = Array<Character>()
        var count = 0
        while count < abs(zeroNumber) {
            header.append("0")
            count += 1
        }
        if zeroNumber > 0 {
            A = header + A
        }
        if zeroNumber < 0 {
            B = header + B
        }
        var res = Array<Character>()
        var nextAppend = 0
        var index = A.count-1
        while index >= 0 {
            var p = 0
            var q = 0
            if A[index] == "1" {
                p = 1
            }
            if B[index] == "1" {
                q = 1
            }
            var sum = p + q + nextAppend
            nextAppend = sum / 2
            sum = sum % 2

            res.insert(Character("\(sum)"), at: 0)
            index -= 1
        }
        if nextAppend > 0 {
            res.insert(Character("\(nextAppend)"), at: 0)
        }
        return String(res)
    }
}