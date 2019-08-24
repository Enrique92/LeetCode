class Solution {
	func heightChecker(_ heights: [Int]) -> Int {
        let sortedHeights = heights.sorted()
        var result = 0
        for i in heights.indices {
            if heights[i] != sortedHeights[i] {
                result += 1
            }
        }
        return result
    }
}