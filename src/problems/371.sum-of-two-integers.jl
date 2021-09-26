# ---
# title: 371. Sum of Two Integers
# id: problem371
# author: Indigo
# date: 2021-09-26
# difficulty: Medium
# categories: Bit Manipulation
# link: <https://leetcode.com/problems/sum-of-two-integers/description/>
# hidden: true
# ---
# 
# Calculate the sum of two integers _a_ and _b_ , but you are **not allowed** to
# use the operator `+` and `-`.
# 
# **Example 1:**
# 
#     
#     
#     Input: a = 1, b = 2
#     Output: 3
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: a = -2, b = 3
#     Output: 1
#     
# 
# 
## @lc code=start
using LeetCode

function get_sum371(a::Int, b::Int)::Int
    while b != 0
        carry = (a & b) << 1
        a = a ⊻ b
        b = carry
    end
    a
end
## @lc code=end
