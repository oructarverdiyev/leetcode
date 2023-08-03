class Solution {
    func reverse(_ x: Int) -> Int {
        
        var num = String(x).reversed()
        
        for n in 0...num.count {
            if num.first == "0" || num.first == "-" {
                num.dropFirst()
            }
        }
        
        let result = x > 0 ? (Int(String(num)) ?? 0) : (Int("-" + String(num).dropLast()) ?? 0)
        
        if result > Int(Int32.max) || result < Int(Int32.min) {
            return 0
        }
        
        return result
    }
}