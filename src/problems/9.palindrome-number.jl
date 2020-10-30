"""
@lc app=leetcode id=9 lang=python3

[9] Palindrome Number

https://leetcode.com/problems/palindrome-number/description/

algorithms
Easy (46.22%)
Likes:    1841
Dislikes: 1457
Total Accepted:    771.5K
Total Submissions: 1.7M
Testcase Example:  '121'

Determine whether an integer is a palindrome. An integer is a palindrome when
it reads the same backward as forward.

Example 1:


Input: 121
Output: true


Example 2:


Input: -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it
becomes 121-. Therefore it is not a palindrome.


Example 3:


Input: 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.


Follow up:

Coud you solve it without converting the integer to a string?



@lc code=start
"""
function is_palindrome(x::Int)::Bool
    if x < 0
        false
    else
        y = x
        y_reverse = 0
        while y > 0
            y, n = divrem(y, 10)
            y_reverse = y_reverse * 10 + n
        end
        x == y_reverse
    end
end