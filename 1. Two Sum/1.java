public class Solution {
    public int[] twoSum(int[] nums, int target){
        HashMap<Integer, Integer> indices = new HashMap<>();
        for(int i = 0; i < nums.length; i++){
            if(indices.containsKey(target - nums[i]))
                return new int[]{indices.get(target  -nums[i]), i};
            indices.put(nums[i], i);
        }
        return null;
    }
}