class Solution {
	func fizzBuzz(_ n: Int) -> [String] {
		var result = [String]()
		
		for num in 1...n {
			// If is multiple of 3
			if (num % 3 == 0 && num % 5 == 0) {
				result.append("FizzBuzz")
			// If is multiple of 5
			} else if (num % 3 == 0) {
				result.append("Fizz")
			// If is multiple of 3 and 5
			} else if (num % 5 == 0) {
				result.append("Buzz")
			// Rest of the cases
			} else {
				result.append("\(num)")
			}
		}
		
		// Return the result
		return result
	}
}