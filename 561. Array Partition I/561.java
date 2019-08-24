class Solution {
    public int arrayPairSum(int[] nums) {
        // Sort first the array
        Arrays.sort(nums);
        int sum = 0;
        
        // Increment the next value
        for(int i=0;i<nums.length;i++){
            sum+=nums[i];
            i++;
        }
        
        // Return the sum of the values
        return sum;
    }
}