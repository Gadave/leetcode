class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var min: Int?
        var max: Int?
        var profit = 0
        
        for p in prices {
            if p > max ?? 1000000000 {
                max = p
                guard let min, let max else { break }
                if (max - min) > profit { profit = max - min }
            }

            if p < min ?? 1000000000 {
                max = p
                min = p
            }
        }

        return profit
    }
}