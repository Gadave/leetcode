class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty { return 0 }
        var profit = 0
        var min = prices[0]
        for item in prices {
            if item < min {
                min = item
                continue
            }
            if item - min > profit {
                profit = item - min
            }
        }
        return profit
    }
}