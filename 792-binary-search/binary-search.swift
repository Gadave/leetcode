class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var slow = 0
        var fast = nums.count - 1

        while slow <= fast {
            let mid = (slow + fast) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[mid] < target {
                slow = mid + 1
            } else {
                fast = mid - 1
            }
        }
        return -1
    }
}