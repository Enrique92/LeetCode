class Solution {
	func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
		var output = [Int]()
		for i in left...right {
			if isSelfDividing(i) { output.append(i) }
		}
		return output
	}

	func isSelfDividing(_ num: Int) -> Bool {
		var value = num
		while value > 0 {
			let digit = value % 10
			if digit > 0, num % digit == 0 {
				value /= 10
			} else {
				return false
			}
		}
		return true
	}
}