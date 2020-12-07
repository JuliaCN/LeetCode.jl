# ---
# title: 967. Numbers With Same Consecutive Differences
# id: problem967
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Depth-first Search, Breadth-first Search
# link: <https://leetcode.com/problems/numbers-with-same-consecutive-differences/description/>
# hidden: true
# ---
# 
# Return all **non-negative** integers of length `n` such that the absolute
# difference between every two consecutive digits is `k`.
# 
# Note that **every** number in the answer **must not** have leading zeros
# **except** for the number `0` itself. For example, `01` has one leading zero
# and is invalid, but `0` is valid.
# 
# You may return the answer in **any order**.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: n = 3, k = 7
#     Output: [181,292,707,818,929]
#     Explanation: Note that 070 is not a valid number, because it has leading zeroes.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: n = 2, k = 1
#     Output: [10,12,21,23,32,34,43,45,54,56,65,67,76,78,87,89,98]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: n = 2, k = 0
#     Output: [11,22,33,44,55,66,77,88,99]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: n = 2, k = 1
#     Output: [10,12,21,23,32,34,43,45,54,56,65,67,76,78,87,89,98]
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: n = 2, k = 2
#     Output: [13,20,24,31,35,42,46,53,57,64,68,75,79,86,97]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `2 <= n <= 9`
#   * `0 <= k <= 9`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
