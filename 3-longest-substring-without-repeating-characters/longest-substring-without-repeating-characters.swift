class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        var left = 0, maxL = 0, charSet = Set<Character>()

        for right in 0..<s.count{

            let char = s[s.index(s.startIndex,offsetBy: right)]

            while charSet.contains(char){
                let leftChar = s[s.index(s.startIndex,offsetBy: left)]
                charSet.remove(leftChar)
                left += 1
            }

            charSet.insert(char)

            maxL = max(maxL, right - left + 1)

        }
    return maxL
 
    }
}