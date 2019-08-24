class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = CharacterSet.alphanumerics.inverted
        let string = s.components(separatedBy: chars).joined(separator: "").lowercased()
        let reversed = String(string.reversed())

        if string == reversed {
            return true
        }
        return false
    }
}