class Solution {
    func romanToInt(_ s: String) -> Int {
        let table = ["I": 1,
             "II": 2,
             "IV": 4,
             "V": 5,
             "IX": 9,
             "X": 10,
             "XL": 40,
             "L": 50,
             "XC": 90,
             "C": 100,
             "CD": 400,
             "D": 500,
             "CM": 900,
             "M": 1000]  
        var step = 0
        var res = 0
        while (step < s.count) {
            if (step + 1 < s.count) {
            let a = s[s.index(s.startIndex, offsetBy: step)]
            let b = s[s.index(s.startIndex, offsetBy: step+1)]
            let value = table["\(a)\(b)"]
            if let v = value {
                res += v
                step += 2
            } else {
                let value = table["\(a)"]
                if let v = value {
                    res += v
                    step += 1
                }
            }
            } else {
                let a = s[s.index(s.startIndex, offsetBy: step)]
                let value = table["\(a)"]
                if let v = value {
                    res += v
                    step += 1
                }
            }
        }
        return res
    }
}