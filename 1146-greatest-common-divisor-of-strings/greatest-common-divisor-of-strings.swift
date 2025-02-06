class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {

        guard str1 + str2 == str2 + str1 else{return ""}

        var gcd = 0
        var length1 = str1.count
        var length2 = str2.count

        while length1 != 0{
            let temp = length1
            length1 = length2 % length1
            length2 = temp
            gcd = length2 
        }
    return String(str1[str1.startIndex..<str1.index(str1.startIndex, offsetBy: gcd)])

    }
}