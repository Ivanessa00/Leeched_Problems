class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        var dictS = [Character: Int]()

        for char in s {
            dictS[char,default:0] += 1
        }

        let ar = Array(dictS.values)

        return Set(ar).count == 1

    }
}