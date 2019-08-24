class Solution {
	func reverseVowels(_ s: String) -> String {
		// Tranform to a Array
		var word = Array(s)
		// Array of characters
		var v = [Character]()
		// Have all the vowels
		let vowels = "aeiouAEIOU"
		
		// Iterate throw the word
		for i in word where vowels.contains(i) {
			v.append(i)
		}
		
		for j in 0..<word.count {
			let char = word[j]
			if (vowels.contains(char)) {
				// Remove the last element if contains any vowel
				word[j] = v.removeLast()
			}
		}
		
		// Return the word with the correct order
		return String(word)
	}
}