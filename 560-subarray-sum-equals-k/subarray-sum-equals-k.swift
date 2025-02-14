class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
       
      var count = 0
      var current = 0
      var dictN = [Int: Int]()

      dictN[0] = 1
      for num in nums{
        current += num
        if let total = dictN[current - k]{
            count += total
        }
        dictN[current, default:0] += 1
      }
    return count
    }
}