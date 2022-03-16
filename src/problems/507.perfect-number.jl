# ---
# title: 507. Perfect Number
# id: problem507
# author: zhwang
# date: 2022-03-10
# difficulty: Easy
# categories: Math
# link: <https://leetcode.com/problems/perfect-number/description/>
# hidden: true
# ---
# 
# A [**perfect number**](https://en.wikipedia.org/wiki/Perfect_number) is a
# **positive integer** that is equal to the sum of its **positive divisors** ,
# excluding the number itself. A **divisor** of an integer `x` is an integer
# that can divide `x` evenly.
# 
# Given an integer `n`, return `true` _if_`n` _is a perfect number, otherwise
# return_`false`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: num = 28
#     Output: true
#     Explanation: 28 = 1 + 2 + 4 + 7 + 14
#     1, 2, 4, 7, and 14 are all divisors of 28.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: num = 6
#     Output: true
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: num = 496
#     Output: true
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: num = 8128
#     Output: true
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: num = 2
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= num <= 108`
# 
# 
## @lc code=start
using LeetCode

perfect_number(num::Int) = num in [6, 28, 496, 8128, 33550336]

## @lc code=end
