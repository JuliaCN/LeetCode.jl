# ---
# title: 854. K-Similar Strings
# id: problem854
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Breadth-first Search, Graph
# link: <https://leetcode.com/problems/k-similar-strings/description/>
# hidden: true
# ---
# 
# Strings `A` and `B` are `K`-similar (for some non-negative integer `K`) if we
# can swap the positions of two letters in `A` exactly `K` times so that the
# resulting string equals `B`.
# 
# Given two anagrams `A` and `B`, return the smallest `K` for which `A` and `B`
# are `K`-similar.
# 
# **Example 1:**
# 
#     
#     
#     Input: A = "ab", B = "ba"
#     Output: 1
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = "abc", B = "bca"
#     Output: 2
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = "abac", B = "baca"
#     Output: 2
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: A = "aabc", B = "abca"
#     Output: 2
# 
# **Note:**
# 
#   1. `1 <= A.length == B.length <= 20`
#   2. `A` and `B` contain only lowercase letters from the set `{'a', 'b', 'c', 'd', 'e', 'f'}`
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
