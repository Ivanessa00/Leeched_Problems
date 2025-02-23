class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        var ar : [[Int]] = []
        var sortedNums = nums.sorted()

        for i in 0..<sortedNums.count{

            if i > 0 && sortedNums[i] == sortedNums[i - 1]{
                continue
            }

            var left = i + 1
            var right = sortedNums.count - 1

            while left < right{

                let sum = sortedNums[i] + sortedNums[left] + sortedNums[right]

                switch sum{

                    case 0 :

                    ar.append([sortedNums[i], sortedNums[left], sortedNums[right]])

                    while left < right && sortedNums[left] == sortedNums[left + 1]{
                        left += 1
                    }
                    while left < right && sortedNums[right] == sortedNums[right - 1]{
                        right -= 1
                    }
                    left += 1 
                    right -= 1

                    case ..<0:
                    left += 1

                    default:
                    right -= 1
                }
            }
        }
    return ar
    }
}