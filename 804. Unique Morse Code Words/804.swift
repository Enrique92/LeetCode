class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
                let morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var result = Set<String>()
        for word in words {
            var curr = ""
            for c in word {
                let num = Int(c.unicodeScalars.first!.value) - 97
                curr += morse[num]
            }
            result.insert(curr)
        }
        return result.count
    }
}