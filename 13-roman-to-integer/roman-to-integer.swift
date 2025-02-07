class Solution {
    func romanToInt(_ s: String) -> Int {

        let dictS : [Character: Int] = ["I" : 1, "V": 5, "X": 10, 
        "L": 50,"C": 100, "D": 500, "M": 1000]

        var result = 0
        var chars = Array(s)

        for char in 0..<chars.count{
            let currentValue = dictS[chars[char]]!
            if char < chars.count - 1, let nextValue = dictS[chars[char + 1]], currentValue < nextValue{
                result -= currentValue
            }else{
                result += currentValue
            }   
        }
    return result 
    }
}