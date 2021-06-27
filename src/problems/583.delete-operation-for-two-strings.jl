# ---
# title: 583. Delete Operation for Two Strings
# id: problem583
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/delete-operation-for-two-strings/description/>
# hidden: true
# ---
# 
# Given two words _word1_ and _word2_ , find the minimum number of steps
# required to make _word1_ and _word2_ the same, where in each step you can
# delete one character in either string.
# 
# **Example 1:**  
# 
#     
#     
#     Input: "sea", "eat"
#     Output: 2
#     Explanation: You need one step to make "sea" to "ea" and another step to make "eat" to "ea".
#     
# 
# **Note:**  
# 
#   1. The length of given words won't exceed 500.
#   2. Characters in given words can only be lower-case letters.
# 
# 
## @lc code=start
using LeetCode

min_distance583(word1::String, word2::String) = 
    length(word2) + length(word2) - 2longest_common_subsequence(word1, word2)
## @lc code=end
