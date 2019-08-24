class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        var sizeArray = nums.count
        for i in nums{
            if (i == 0 && sizeArray >= 0) {
                nums.remove(at: index)
                nums.append(0)
            } else {
                index += 1
                sizeArray -= 1
            }
        }
    }
}