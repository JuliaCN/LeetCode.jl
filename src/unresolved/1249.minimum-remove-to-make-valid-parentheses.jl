# ---
# title: 1249. Minimum Remove to Make Valid Parentheses
# id: problem1249
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String, Stack
# link: <https://leetcode.com/problems/minimum-remove-to-make-valid-parentheses/description/>
# hidden: true
# ---
# 
# Given a string s of `'('` , `')'` and lowercase English characters.
# 
# Your task is to remove the minimum number of parentheses ( `'('` or `')'`, in
# any positions ) so that the resulting _parentheses string_ is valid and return
# **any** valid string.
# 
# Formally, a _parentheses string_ is valid if and only if:
# 
#   * It is the empty string, contains only lowercase characters, or
#   * It can be written as `AB` (`A` concatenated with `B`), where `A` and `B` are valid strings, or
#   * It can be written as `(A)`, where `A` is a valid string.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "lee(t(c)o)de)"
#     Output: "lee(t(c)o)de"
#     Explanation: "lee(t(co)de)" , "lee(t(c)ode)" would also be accepted.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "a)b(c)d"
#     Output: "ab(c)d"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "))(("
#     Output: ""
#     Explanation: An empty string is also valid.
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "(a(b(c)d)"
#     Output: "a(b(c)d)"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 10^5`
#   * `s[i]` is one of  `'('` , `')'` and lowercase English letters`.`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
