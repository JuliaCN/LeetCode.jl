# ---
# title: 1405. Longest Happy String
# id: problem1405
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Dynamic Programming, Greedy
# link: <https://leetcode.com/problems/longest-happy-string/description/>
# hidden: true
# ---
# 
# A string is called _happy_ if it does not have any of the strings `'aaa'`,
# `'bbb'` or `'ccc'` as a substring.
# 
# Given three integers `a`, `b` and `c`, return **any** string `s`, which
# satisfies following conditions:
# 
#   * `s` is _happy  _and longest possible.
#   * `s` contains **at most** `a` occurrences of the letter `'a'`, **at most** `b` occurrences of the letter `'b'` and **at most** `c` occurrences of the letter `'c'`.
#   * `s `will only contain `'a'`, `'b'` and `'c'` letters.
# 
# If there is no such string `s` return the empty string `""`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: a = 1, b = 1, c = 7
#     Output: "ccaccbcc"
#     Explanation: "ccbccacc" would also be a correct answer.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: a = 2, b = 2, c = 1
#     Output: "aabbc"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: a = 7, b = 1, c = 0
#     Output: "aabaa"
#     Explanation: It's the only correct answer in this case.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= a, b, c <= 100`
#   * `a + b + c > 0`
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
