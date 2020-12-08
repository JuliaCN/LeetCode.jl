# ---
# title: 856. Score of Parentheses
# id: problem856
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String, Stack
# link: <https://leetcode.com/problems/score-of-parentheses/description/>
# hidden: true
# ---
# 
# Given a balanced parentheses string `S`, compute the score of the string based
# on the following rule:
# 
#   * `()` has score 1
#   * `AB` has score `A + B`, where A and B are balanced parentheses strings.
#   * `(A)` has score `2 * A`, where A is a balanced parentheses string.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "()"
#     Output: 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "(())"
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: "()()"
#     Output: 2
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: "(()(()))"
#     Output: 6
#     
# 
# 
# 
# **Note:**
# 
#   1. `S` is a balanced parentheses string, containing only `(` and `)`.
#   2. `2 <= S.length <= 50`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
