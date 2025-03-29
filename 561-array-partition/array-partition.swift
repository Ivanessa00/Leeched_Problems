class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        var sum = 0 
        for i in stride(from: 0, to: sortedNums.count, by: 2){
            sum += sortedNums[i]
        }
    return sum
    }
}