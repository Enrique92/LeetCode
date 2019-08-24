class Solution {
    // Map with the digits 0 to 9
    let map: [Character: Int] = [
        "0": 0,
        "1": 1,
        "2": 2,
        "3": 3,
        "4": 4,
        "5": 5,
        "6": 6,
        "7": 7,
        "8": 8,
        "9": 9
    ]
    
    var n: Int!
    
    func numDecodings(_ s: String) -> Int {
        // Size of the code
        n = s.count
        
        // If is 0 return 0 directly
	    if n == 0 {
	        return 0
	    }
        
        // Creating the array
	    var dp = [Int](repeating: -1, count: n)
	    var nums = Array(s)
        
        // Check in the map each value
	    if let last = map[nums[n - 1]] {
	        if last != 0 {
	            dp[n - 1] = 1
	        } else {
	            if n - 2 >= 0, let prev = map[nums[n - 2]], prev != 0, prev <= 2 {
	                dp[n - 1] = 0
	                dp[n - 2] = 1
	            } else {
	                return 0
	            }
	        }
	    }
	    
	    return ways(&nums, &dp, 0)
	}
	
    // Create a auxiliar function to check if there is different ways to decode
	func ways(_ nums: inout [Character], _ dp: inout [Int], _ start: Int) -> Int {
	    // If the size is 1 directly -> 1
        if start >= n {
	        return 1
	    }
	    
        // If there is no number -> 0
	    if dp[start] == -1 {
	        var answer = 0
	        if let cur = map[nums[start]], cur != 0 {
	            answer += ways(&nums, &dp, start + 1)
	            
	            if start + 1 < n, let next = map[nums[start + 1]], cur * 10 + next <= 26 {
	                answer += ways(&nums, &dp, start + 2)
	            }
	        }
	        dp[start] = answer
	    }
	    
	    return dp[start]
	}
}