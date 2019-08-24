class Solution {
    public int[] relativeSortArray(int[] arr1, int[] arr2) {
        int i = 0;
        for (int j = 0; j < arr2.length; j++) {
            for (int k = i; k < arr1.length; k++) {
                if (arr1[k] == arr2[j]) {
                    int tmp = arr1[k];
                    arr1[k] = arr1[i];
                    arr1[i] = tmp;
                    i++;
                }
            }
        }
        if(i < arr1.length) {
            Arrays.sort(arr1, i, arr1.length);
        }
        return arr1;
    }
}