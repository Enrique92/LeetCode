class Solution {
    func defangIPaddr(_ address: String) -> String {
        let newString = address.replacingOccurrences(of: ".", with: "[.]")
        return newString
    }
}