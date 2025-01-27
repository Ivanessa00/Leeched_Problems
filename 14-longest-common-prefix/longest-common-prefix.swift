class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }
        
        if strs.count == 1{
            return strs[0]
        }

        var prefix = strs[0]

        for str in strs{
            while !str.hasPrefix(prefix) {
                prefix.removeLast()
            }
            if prefix.isEmpty{
                return ""
            }
        }
        return prefix
    }
}