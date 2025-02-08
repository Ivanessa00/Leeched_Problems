class Solution {
    func numOfStrings(_ patterns: [String], _ word: String) -> Int {
        var count = 0
        for char in patterns{
            if word.contains(char){
                count += 1
            } 
        }
    return count 
    }
}