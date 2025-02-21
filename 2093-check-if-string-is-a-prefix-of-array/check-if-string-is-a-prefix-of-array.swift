class Solution {
    func isPrefixString(_ s: String, _ words: [String]) -> Bool {

        var word = ""


        for i in words{
            word += i
            if word == s { return true}
        }
        return false
        
    }
}