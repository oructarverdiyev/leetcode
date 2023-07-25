class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let sLength = s.count
        
        if sLength == 0 {
            return 0
        }
        
        var longestSequence = 0
        
        var characterAndIndexDict = [Character: Int]()
        
        var windowStartIndex = 0
        
        for (windowEndIndex, char) in s.enumerated() {
            if let existingCharIndex = characterAndIndexDict[char],
               existingCharIndex >= windowStartIndex 
            {       
                windowStartIndex = existingCharIndex + 1
            }
            
            longestSequence = max(longestSequence, windowEndIndex - windowStartIndex + 1)
            
            characterAndIndexDict[char] = windowEndIndex
        }
        
        return longestSequence
    }
}