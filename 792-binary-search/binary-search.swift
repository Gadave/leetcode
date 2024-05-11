class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var cur = -1
        for num in nums {
            cur += 1
            if num == target {
                return cur
            } else if num > target {
                return -1
            }
        }

        return -1
    }
}