class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count{
            return false
        }

        var dict = [Character: Int]()

        for char in s{
            dict[char, default: 0] += 1
        }  
        
        for char in t{
            if let count = dict[char], count > 0{
                dict[char] = count - 1
            }else{
                return false
            }
        }
    return true
    }
}