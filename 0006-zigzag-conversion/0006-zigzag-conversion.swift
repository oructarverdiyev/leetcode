class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }
        
        var rows = Array(repeating: [String](), count: numRows)
        var counter = 0
        var down = false
        
        for char in s {
            rows[counter].append(String(char))
            
            if counter == 0 || counter == numRows - 1 {
                down = !down 
            }
            
            if down {
                counter += 1
            } else {
                counter -= 1
            }
        }
        
        let result = rows.flatMap{ $0 }
        return result.joined(separator: "")
    }
}