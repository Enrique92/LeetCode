class Solution {
    public boolean judgeSquareSum(int c) {
        int i = 0;
        int j = (int) Math.sqrt(c);
        while (i <= j) {
            int sum = i * i + j * j;
            if (i*i+j*j==c) {
                return true;
            } else if(sum < c) {
                i++;
            } else {
               j--; 
            } 
        }
        return false;
    }
}