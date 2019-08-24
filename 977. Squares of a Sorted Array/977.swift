class Solution {
	func sortedSquares(_ A: [Int]) -> [Int] {
		var temp: [Int] = []
		for values in A {
			let pow: Int = values * values
			temp.append(pow)
		}
		
		temp.sort()
		return temp
	}
}