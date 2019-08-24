class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var parenth = ""
        var count = 0
        
        for parenthesis in S {
            if parenthesis == "(" {
                if count > 0 { parenth.append(parenthesis) }
                count += 1
            } else if parenthesis == ")" {
                count -= 1
                if count > 0 { parenth.append(parenthesis) }
            }
        }
        return parenth
    }
}