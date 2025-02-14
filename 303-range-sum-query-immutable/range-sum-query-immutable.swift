
class NumArray {
    var nums : [Int]
    var arN = [Int]()

    init(_ nums: [Int]) {
        self.nums = nums

        var current = 0

        for num in nums{
            current += num
            arN.append(current)
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        return left == 0 ? arN[right] : arN[right] - arN[left - 1]
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */