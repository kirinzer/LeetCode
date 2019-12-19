class Solution {
    func mySqrt(_ x: Int) -> Int {
        if (x == 1 || x == 0) {
            return x
        }
        var left = 1
        var right = x / 2 + 1
        var mid = 0
        while left <= right {
            mid = left + (right - left) / 2
            // x between mid^2, (mid+1)^2
            if (mid <= x / mid) && (mid + 1) > x / (mid + 1) {
                return mid
            }
            // x < mid^2
            if mid > (x / mid) {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return mid
    }
}