# ---
# title: 1523. Count Odd Numbers in an Interval Range
# id: problem1523
# author: zhwang
# date: 2022-03-18
# difficulty: Easy
# categories: Math
# link: <https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/description/>
# hidden: true
# ---
# 
# Given two non-negative integers `low` and `high`. Return the _count of odd
# numbers between_`low` _and_` high` _  (inclusive)_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: low = 3, high = 7
#     Output: 3
#     Explanation: The odd numbers between 3 and 7 are [3,5,7].
# 
# **Example 2:**
# 
#     
#     
#     Input: low = 8, high = 10
#     Output: 1
#     Explanation: The odd numbers between 8 and 10 are [9].
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= low <= high <= 10^9`
# 
# 
## @lc code=start
using LeetCode

count_odd_numbers(low::Int, high::Int) = (high - low + 1 + (low & 1)) >> 1

## @lc code=end
