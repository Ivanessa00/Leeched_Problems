class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let sortedNums = nums.sorted()

        for num in 0..<sortedNums.count - 1{
            if sortedNums[num] == sortedNums[num + 1]{
                return true
            }
        }
    return false  
    }
}