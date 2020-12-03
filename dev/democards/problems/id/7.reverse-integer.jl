"""
@lc app=leetcode id=7 lang=python3

[7] Reverse Integer

https://leetcode.com/problems/reverse-integer/description/

algorithms
Easy (25.60%)
Likes:    2755
Dislikes: 4283
Total Accepted:    916.1K
Total Submissions: 3.6M
Testcase Example:  '123'

Given a 32-bit signed integer, reverse digits of an integer.

Example 1:


Input: 123
Output: 321


Example 2:


Input: -123
Output: -321


Example 3:


Input: 120
Output: 21


Note:
Assume we are dealing with an environment which could only store integers
within the 32-bit signed integer range: [−2^31,  2^31 − 1]. For the purpose
of this problem, assume that your function returns 0 when the reversed
integer overflows.



@lc code=start
"""
function reverse_integer(x::Int32)::Int
    s = sign(x)
    r = parse(Int, reverse(string(s * x)))
    return r <= typemax(Int32) ? s * r : 0
end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

