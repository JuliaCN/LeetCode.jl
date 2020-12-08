# ---
# title: 394. Decode String
# id: problem394
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Stack, Depth-first Search
# link: <https://leetcode.com/problems/decode-string/description/>
# hidden: true
# ---
# 
# Given an encoded string, return its decoded string.
# 
# The encoding rule is: `k[encoded_string]`, where the _encoded_string_ inside
# the square brackets is being repeated exactly _k_ times. Note that _k_ is
# guaranteed to be a positive integer.
# 
# You may assume that the input string is always valid; No extra white spaces,
# square brackets are well-formed, etc.
# 
# Furthermore, you may assume that the original data does not contain any digits
# and that digits are only for those repeat numbers, _k_. For example, there
# won't be input like `3a` or `2[4]`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "3[a]2[bc]"
#     Output: "aaabcbc"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "3[a2[c]]"
#     Output: "accaccacc"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "2[abc]3[cd]ef"
#     Output: "abcabccdcdcdef"
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "abc3[cd]xyz"
#     Output: "abccdcdcdxyz"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 30`
#   * `s` consists of lowercase English letters, digits, and square brackets `'[]'`.
#   * `s` is guaranteed to be **a valid** input.
#   * All the integers in `s` are in the range `[1, 300]`.
# 
# 
## @lc code=start
using LeetCode

## add your code here:
## @lc code=end
