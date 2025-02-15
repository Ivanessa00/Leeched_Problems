class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {

        guard let ind = word.firstIndex(of:ch) else { return word }
        
        return String(word[..<word.index(after: ind)].reversed()) + word[word.index(after: ind)...]

        
    }
}