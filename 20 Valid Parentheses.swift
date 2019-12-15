class Solution {
    func isValid(_ s: String) -> Bool {
        if (s.count % 2) != 0 {
            return false
        }
        var table = ["(":")",")":"(","{":"}","}":"{","]":"[","[":"]"]
        var array = Array(s)
        var stack:[Character] = Array()
        var p = 0
        while p < s.count {
            let item = array[p]
            if stack.count == 0 {
                stack.append(item)
                p += 1
                continue
            }
            if let topItem = stack.last {
                if String(topItem) == table[String(item)] {
                    stack.removeLast()
                } else {
                    stack.append(item)
                }
                p += 1
            }
        }
        return stack.count == 0 
    }
}