# ---
# title: 633. Sum of Square Numbers
# id: problem633
# author: Indigo
# date: 2021-06-27
# difficulty: Medium
# categories: Math
# link: <https://leetcode.com/problems/sum-of-square-numbers/description/>
# hidden: true
# ---
# 
# Given a non-negative integer `c`, decide whether there're two integers `a` and
# `b` such that `a2 + b2 = c`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: c = 5
#     Output: true
#     Explanation: 1 * 1 + 2 * 2 = 5
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: c = 3
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: c = 4
#     Output: true
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: c = 2
#     Output: true
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: c = 1
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= c <= 231 - 1`
# 
# 
## @lc code=start
using LeetCode

function judge_square_sum(n::Int)
    upper = isqrt(n)
    i = 0
    while i <= upper
        ss = i ^ 2 + upper ^ 2
        ss == n && return true
        ss > n ? (upper -= 1) : (i += 1)
    end
    return false
end
## @lc code=end
