class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        var dict = [Character: Int]()
        for c in s {
            var count = dict[c] ?? 0
            count += 1
            dict[c] = count
        }

        for c in t {
            guard var count = dict[c], count > 0 else { return false }
            count -= 1
            dict[c] = count
        }
        return true
    }
}