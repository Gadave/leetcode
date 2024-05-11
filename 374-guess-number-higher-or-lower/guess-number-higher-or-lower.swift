/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var low = 1
        var max = n

        while low < max {
            let centr = (low + max) / 2
            switch guess(centr) {
                case -1:
                max = centr - 1
                case 1:
                low = centr + 1
                default:
                return centr
            }
        }

        return low
    }
}