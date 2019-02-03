class Solution {
    func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
        var B = A
        var answer = [Int]()
        var sum = 0
        for number in B {
            if number%2 == 0 {
                sum = sum + number
            }
        }
        for query in queries {
            let index = query[1]
            let val = query[0]
            let previousVal = B[index]
            B[index] = B[index]+val
            if previousVal%2 == 0 {
                sum = sum - previousVal
            }
            if B[index]%2 == 0 {
                sum = sum + B[index]
            }
            answer.append(sum)
        }
        return answer
    }
}