class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var evenNums = [Int] ()
        var oddNums = [Int] ()
        for i in 0...A.count - 1 {
            if A[i] % 2 == 0 {
                evenNums.append(A[i])
            } else {
                oddNums.append(A[i])
            }
        }
        return evenNums + oddNums
    }
}