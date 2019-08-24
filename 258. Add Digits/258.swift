class Solution {
    func addDigits(_ num: Int) -> Int {
        var number = num
        // While the size is higher than 9 keep doing
        while (number > 9) {
            var sum = 0
            // Getting the sum of the next digits
            while (number > 0) {
                sum += number % 10
                number = number / 10
            }
            number = sum
        }
        return number
    }
}