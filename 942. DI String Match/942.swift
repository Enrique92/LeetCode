class Solution {
    func diStringMatch(_ S: String) -> [Int] {
        var min = 0
        var max = S.count
        var asciiCode = S.unicodeScalars.map { Int($0.value) }

        for (index, value) in asciiCode.enumerated() {
            // Control the range of values
            if value == 73 {
                asciiCode[index] = min
                min += 1
            }
            else {
                asciiCode[index] = max
                max -= 1
            }
        }
        
        // Append the min value
        asciiCode.append(min)
        
        // Return the ascii value
        return asciiCode
    }
}