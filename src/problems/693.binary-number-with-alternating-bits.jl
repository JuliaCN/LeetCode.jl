# ---
# title: 693. Binary Number with Alternating Bits
# id: problem693
# author: zhwang
# date: 2022-03-28
# difficulty: Easy
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/binary-number-with-alternating-bits/description/>
# hidden: true
# ---
# 
# Given a positive integer, check whether it has alternating bits: namely, if
# two adjacent bits will always have different values.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 5
#     Output: true
#     Explanation: The binary representation of 5 is: 101
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 7
#     Output: false
#     Explanation: The binary representation of 7 is: 111.
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 11
#     Output: false
#     Explanation: The binary representation of 11 is: 1011.
# 
# **Example 4:**
# 
#     
#     
#     Input: n = 10
#     Output: true
#     Explanation: The binary representation of 10 is: 1010.
# 
# **Example 5:**
# 
#     
#     
#     Input: n = 3
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= n <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

function has_alternating_bits(n::Int)::Bool
    a = (n >> 1) ⊻ n
    return a & (a + 1) == 0
end

## @lc code=end
