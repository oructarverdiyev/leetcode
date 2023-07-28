class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let arr = nums1 + nums2
        var median: Double = 0
        
        if arr.count % 2 == 0 {
            median = (Double(arr.sorted(by: <)[arr.count / 2]) + Double(arr.sorted(by: <)[(arr.count / 2) - 1])) / 2
        } else {
            median = Double(arr.sorted(by: <)[arr.count / 2])
        }
        
        return median
    }
}