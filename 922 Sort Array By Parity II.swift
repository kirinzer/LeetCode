class Solution {
    func sortArrayByParityII(_ A: [Int]) -> [Int] {
        var B = Array<Int>()
        var C = Array<Int>()
        var D = Array<Int>()
        let length = A.count / 2 - 1
        for a in A {
            if a % 2 == 0 {
                B.append(a)
            } else {
                C.append(a)
            }
        }
        for i in 0...length {
            D.append(B[i]);
            D.append(C[i]);
        }
        return D
    }
}