# ---
# title: 1209. Remove All Adjacent Duplicates in String II
# id: problem1209
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: Stack
# link: <https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/description/>
# hidden: true
# ---
# 
# Given a string `s`, a _k_   _duplicate removal_  consists of choosing `k`
# adjacent and equal letters from `s` and removing them causing the left and the
# right side of the deleted substring to concatenate together.
# 
# We repeatedly make `k` duplicate removals on `s` until we no longer can.
# 
# Return the final string after all such duplicate removals have been made.
# 
# It is guaranteed that the answer is unique.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "abcd", k = 2
#     Output: "abcd"
#     Explanation: There's nothing to delete.
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "deeedbbcccbdaa", k = 3
#     Output: "aa"
#     Explanation: First delete "eee" and "ccc", get "ddbbbdaa"
#     Then delete "bbb", get "dddaa"
#     Finally delete "ddd", get "aa"
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "pbbcggttciiippooaais", k = 2
#     Output: "ps"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 10^5`
#   * `2 <= k <= 10^4`
#   * `s` only contains lower case English letters.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
