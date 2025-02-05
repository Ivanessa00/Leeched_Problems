class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {

        var word3 = ""

        let arWord1 = Array(word1)
        let arWord2 = Array(word2)

        let minLength = min(word1.count, word2.count)

        for i in 0..<minLength{
            word3.append(arWord1[i])
            word3.append(arWord2[i])
        }
        if minLength < arWord1.count{
            word3.append(contentsOf: arWord1[minLength...])
        }
        if minLength < arWord2.count{
            word3.append(contentsOf: arWord2[minLength...])
        }
    return word3
    }
}