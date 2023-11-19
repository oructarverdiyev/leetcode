class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x >= 0 {
            if x == Int(String("\(x)".reversed())) {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
}