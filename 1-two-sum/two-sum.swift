class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        var idx = -1

        for num in nums {
            idx += 1
            
            let s = target - num
            if let idx2 = dict[s] {
                return [idx, idx2]
            }
            dict[num] = idx
        }

        return [0,0]
    }
}