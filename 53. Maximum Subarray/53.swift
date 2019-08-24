class Solution {
    // Enrique Alcaide Munoz
    func maxSubArray(_ nums: [Int]) -> Int {
        // From the begining
        var start = nums[0]
        
        // From the begining to the end
        var end = nums[0]
        
        // From 1 to the maximum size of the number
        for i in 1..<nums.count {
            // The end is the maximum of the end plus the next num to the next num
            end = max(end + nums[i], nums[i])
            // The start is the maximum of the start to the end
            start = max(start, end)
        }
        // Return the start number
        return start
    }
}