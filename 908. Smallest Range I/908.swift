class Solution {
    func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
        var small = Int.max
        var big = Int.min
        for a in A {
            small = min(small, a)
            big = max(big, a)
        }
        return max(big - small - 2 * K, 0)
    }
}