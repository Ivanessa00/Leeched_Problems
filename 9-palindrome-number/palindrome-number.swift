class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 || x % 10 == 0 && x != 0{
            return false
        }
        
        var num1 = 0
        var num2 = x

        while num2 > num1{
            num1 = num1 * 10 + num2 % 10
            num2 /= 10
        }

        if num1 == num2 || num2 == num1 / 10{
            return true
        } else{
            return false
        }
    }
}