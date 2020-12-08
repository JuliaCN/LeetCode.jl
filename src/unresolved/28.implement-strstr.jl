# ---
# title: 28. Implement strStr()
# id: problem28
# author: Tian Jun
# date: 2020-10-31
# difficulty: Easy
# categories: Two Pointers, String
# link: <https://leetcode.com/problems/implement-strstr/description/>
# hidden: true
# ---
# 
# Implement [strStr()](http://www.cplusplus.com/reference/cstring/strstr/).
# 
# Return the index of the first occurrence of needle in haystack, or `-1` if
# `needle` is not part of `haystack`.
# 
# **Clarification:**
# 
# What should we return when `needle` is an empty string? This is a great
# question to ask during an interview.
# 
# For the purpose of this problem, we will return 0 when `needle` is an empty
# string. This is consistent to C's
# [strstr()](http://www.cplusplus.com/reference/cstring/strstr/) and Java's
# [indexOf()](https://docs.oracle.com/javase/7/docs/api/java/lang/String.html#indexOf\(java.lang.String\)).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: haystack = "hello", needle = "ll"
#     Output: 2
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: haystack = "aaaaa", needle = "bba"
#     Output: -1
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: haystack = "", needle = ""
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= haystack.length, needle.length <= 5 * 104`
#   * `haystack` and `needle` consist of only lower-case English characters.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
