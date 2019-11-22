class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var B = Array<Int>()
        var C = Array<Int>()
        for a in A {
            if a%2 == 0 {
                B.append(a)
            } else {
                C.append(a)
            }
        }
        B.append(contentsOf: C)
        return B
    }
}