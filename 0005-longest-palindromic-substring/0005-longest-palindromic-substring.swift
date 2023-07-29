class Solution {
    func longestPalindrome(_ s: String) -> String {
        
        var leftIndex = 0
        var rightIndex = 0
        var chars = Array(s)  
        
        for index in 0..<s.count {

            let lengthOdd = length(chars, index, index)

            let lengthEven = length(chars, index, index + 1)
            
            let maxLength = max(lengthOdd, lengthEven)
            
            if maxLength > rightIndex - leftIndex {
                leftIndex = index - (maxLength - 1)/2
                rightIndex = index + maxLength/2
            }
        }
        return String(chars[leftIndex...rightIndex])
    }
    
    private func length(_ s: [Character], _ left: Int, _ right: Int) -> Int {
        var left = left
        var right = right
                
        while left >= 0 && right < s.count && s[left] == s[right]  {
            left -= 1
            right += 1
        }
        return right - left - 1
    }
}