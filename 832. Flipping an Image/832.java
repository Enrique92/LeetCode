class Solution {
    public int[][] flipAndInvertImage(int[][] A) {
        for(int i = 0; i < A.length; i++) {
            int start = 0;
            int end = A[i].length - 1;
            while(start <= end) {
                int temp_start = Math.abs(A[i][start] - 1);
                int temp_end = Math.abs(A[i][end] - 1);

                A[i][start] = temp_end;
                A[i][end] = temp_start;
                start++;
                end--;
            }
        }
        return A;
    }
}