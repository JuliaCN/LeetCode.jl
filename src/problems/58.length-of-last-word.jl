# ---
# title: 58. Length of Last Word
# id: problem58
# author: Indigo
# date: 2021-09-22
# difficulty: Easy
# categories: String
# link: <https://leetcode.com/problems/length-of-last-word/description/>
# hidden: true
# ---
# 
# Given a string `s` consists of some words separated by spaces, return _the
# length of the last word  in the string. If the last word does not exist,
# return _`0`.
# 
# A **word** is a maximal substring consisting of non-space characters only.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "Hello World"
#     Output: 5
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = " "
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 104`
#   * `s` consists of only English letters and spaces `' '`.
# 
# 
## @lc code=start
using LeetCode

length_of_last_word(s::String) = length(rsplit(s, ' '; limit = 2, keepempty=false)[end])
## @lc code=end
