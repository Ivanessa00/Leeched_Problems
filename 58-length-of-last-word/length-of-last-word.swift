class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var lastWord = ""
        for char in s.reversed() {
            if char != " "{
                lastWord += String(char)
            }else if lastWord.count > 0{
                return lastWord.count
            }
        }
    return lastWord.count 
    }
}