# ---
# title: 1585. Check If String Is Transformable With Substring Sort Operations
# id: problem1585
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: String, Greedy
# link: <https://leetcode.com/problems/check-if-string-is-transformable-with-substring-sort-operations/description/>
# hidden: true
# ---
# 
# Given two strings `s` and `t`, you want to transform string `s` into string
# `t` using the following operation any number of times:
# 
#   * Choose a **non-empty** substring in `s` and sort it in-place so the characters are in  **ascending order**.
# 
# For example, applying the operation on the underlined substring in `"1 _4234_
# "` results in `"1 _2344_ "`.
# 
# Return `true` if _it is possible to transform string`s` into string `t`_.
# Otherwise, return `false`.
# 
# A **substring**  is a contiguous sequence of characters within a string.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "84532", t = "34852"
#     Output: true
#     Explanation: You can transform s into t using the following sort operations:
#     "84 _53_ 2" (from index 2 to 3) -> "84 _35_ 2"
#     " _843_ 52" (from index 0 to 2) -> " _348_ 52"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "34521", t = "23415"
#     Output: true
#     Explanation: You can transform s into t using the following sort operations:
#     " _3452_ 1" -> " _2345_ 1"
#     "234 _51_ " -> "234 _15_ "
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "12345", t = "12435"
#     Output: false
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "1", t = "2"
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `s.length == t.length`
#   * `1 <= s.length <= 105`
#   * `s` and `t` only contain digits from `'0'` to `'9'`.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
