# ---
# title: 343. Integer Break
# id: problem343
# author: Indigo
# date: 2021-06-14
# difficulty: Medium
# categories: Math, Dynamic Programming
# link: <https://leetcode.com/problems/integer-break/description/>
# hidden: true
# ---
# 
# Given a positive integer _n_ , break it into the sum of **at least** two
# positive integers and maximize the product of those integers. Return the
# maximum product you can get.
# 
# **Example 1:**
# 
#     
#     
#     Input: 2
#     Output: 1
#     Explanation: 2 = 1 + 1, 1 × 1 = 1.
# 
# **Example 2:**
# 
#     
#     
#     Input: 10
#     Output: 36
#     Explanation: 10 = 3 + 3 + 4, 3 × 3 × 4 = 36.
# 
# **Note** : You may assume that _n_ is not less than 2 and not larger than 58.
# 
# 
## @lc code=start
using LeetCode

function integer_break(n::Int)
    n <= 3 && return n - 1
    a, b = n ÷ 3, n % 3
    b == 0 && return 3 ^ a
    b == 1 && return 3 ^ (a - 1) * 4
    return 3 ^ a * 2
end
## @lc code=end
