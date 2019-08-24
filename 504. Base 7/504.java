class Solution {
    public String convertToBase7(int num) {
        String digits = "0123456";
        
        boolean sign = false;
        
        if (num < 0) {
            sign = true;
            num = -1 * num;
        }
        
        int d = num / 7; 
        int r = (num % 7);
        
        if (d == 0) {
            if (sign) {
                return "-" + digits.charAt(r);
            } else {
				return "" + digits.charAt(r);
			}
        }
        if (sign) {
            return "-" + convertToBase7(d) + digits.charAt(r);
        } else {
			return convertToBase7(d) + digits.charAt(r);
		}
    }
}