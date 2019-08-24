class Solution {
    func fib(_ N: Int) -> Int {
        guard N > -1 else { 
            return 0 
        }
        return fibRecursive(N)
    }

    func fibRecursive(_ N: Int) -> Int {
        if N == 0 {
            return 0
        }
        if N == 1 {
            return 1
        }
        return fibRecursive(N - 1) + fibRecursive(N - 2)
    }
}