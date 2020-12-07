# ---
# title: 1432. Max Difference You Can Get From Changing an Integer
# id: problem1432
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/max-difference-you-can-get-from-changing-an-integer/description/>
# hidden: true
# ---
# 
# You are given an integer `num`. You will apply the following steps exactly
# **two** times:
# 
#   * Pick a digit `x (0 <= x <= 9)`.
#   * Pick another digit `y (0 <= y <= 9)`. The digit `y` can be equal to `x`.
#   * Replace all the occurrences of `x` in the decimal representation of `num` by `y`.
#   * The new integer **cannot** have any leading zeros, also the new integer **cannot** be 0.
# 
# Let `a` and `b` be the results of applying the operations to `num` the first
# and second times, respectively.
# 
# Return _the max difference_ between `a` and `b`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: num = 555
#     Output: 888
#     Explanation: The first time pick x = 5 and y = 9 and store the new integer in a.
#     The second time pick x = 5 and y = 1 and store the new integer in b.
#     We have now a = 999 and b = 111 and max difference = 888
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: num = 9
#     Output: 8
#     Explanation: The first time pick x = 9 and y = 9 and store the new integer in a.
#     The second time pick x = 9 and y = 1 and store the new integer in b.
#     We have now a = 9 and b = 1 and max difference = 8
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: num = 123456
#     Output: 820000
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: num = 10000
#     Output: 80000
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: num = 9288
#     Output: 8700
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= num <= 10^8`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
