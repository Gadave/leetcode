class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var nums = nums
        var results = [String]()
        
        var start: Int?
        for i in 0..<nums.count {
            if start == nil { 
                start = i
            } else if nums[i] == nums[i - 1] {
                results.append("\(nums[i - 1])")
                start = i
            } else if nums[i] != nums[i - 1] + 1 {
                if nums[start!] == nums[i - 1] {
                    results.append("\(nums[i - 1])")
                } else {
                    results.append("\(nums[start!])->\(nums[i - 1])")
                }
                start = i
            }
            
            if i == nums.count - 1 {
                if nums[start!] != nums[i] {
                    results.append("\(nums[start!])->\(nums[i])")
                } else {
                    results.append("\(nums[i])")
                }
            }
        }

        return results
    }
}