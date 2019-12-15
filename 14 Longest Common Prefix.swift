class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var step = 0
        if strs.count == 0 {
            return ""
        }
        if strs.count == 1 {
            return strs[0]
        }
        var prefix = strs[0]
        while step < strs.count {
            if (step + 1 < strs.count) {
                let a = prefix
                let b = strs[step + 1]
                var tempPrefix = ""
                for (index, _) in a.enumerated() {
                    if (index < min(Array(a).count, Array(b).count)) {
                        let valA:Character = Array(a)[index]
                        let valB:Character = Array(b)[index]
                        if valA == valB {
                            tempPrefix = tempPrefix  + "\(valA)"
                        } else {
                            prefix = tempPrefix
                            break
                        }
                    } else {
                        prefix = tempPrefix
                    }
                }
            }
            step += 1
        }
        return prefix
    }
}