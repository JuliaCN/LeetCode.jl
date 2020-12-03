"""
@lc app=leetcode id=201 lang=python3

[201] Bitwise AND of Numbers Range

https://leetcode.com/problems/bitwise-and-of-numbers-range/description/

algorithms
Medium (36.95%)
Likes:    1092
Dislikes: 128
Total Accepted:    158.1K
Total Submissions: 401.2K
Testcase Example:  '5\n7'

Given a range [m, n] where 0 <= m <= n <= 2147483647, return the bitwise AND
of all numbers in this range, inclusive.

Example 1:


Input: [5,7]
Output: 4


Example 2:


Input: [0,1]
Output: 0


@lc code=start
"""
function range_bitwise_and(m::Int, n::Int)::Int
    i = 0
    while m != n
        m >>= 1
        n >>= 1
        i += 1
    end
    return n << i
end

# This file was generated using Literate.jl, https://github.com/fredrikekre/Literate.jl

