class Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        let mediana = nums.count / 2 
        
        return nums.map{ abs($0 - sorted[mediana]) }.reduce(0, +)
    }
}