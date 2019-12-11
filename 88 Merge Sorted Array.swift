class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var l1 = m - 1
        var l2 = n - 1
        var p = m + n - 1
        while l1 >= 0 && l2 >= 0 {
            if nums1[l1] > nums2[l2] {
                nums1[p] = nums1[l1]
                p -= 1
                l1 -= 1
            } else {
                nums1[p] = nums2[l2]
                p -= 1
                l2 -= 1
            }
        }
        while l2 >= 0 {
            nums1[p] = nums2[l2]
            p -= 1
            l2 -= 1
        }
    }
}