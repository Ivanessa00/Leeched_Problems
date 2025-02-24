class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {

        var totalSum = 0

        for i in 0...k - 1{
            totalSum += nums[i]
        }
        var maxSum = totalSum

        for i in k..<nums.count{
            totalSum += nums[i]
            totalSum -= nums[i - k]
            maxSum = max(maxSum, totalSum)
        }
    return Double(maxSum) / Double(k)
    }
}