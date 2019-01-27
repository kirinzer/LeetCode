class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var B = [Int]()
        for a in A {
            let square = a*a
            B.append(square)
        }
        B.sort()
        return B
    }
}