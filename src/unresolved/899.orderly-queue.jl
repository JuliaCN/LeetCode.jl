# ---
# title: 899. Orderly Queue
# id: problem899
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: Math, String
# link: <https://leetcode.com/problems/orderly-queue/description/>
# hidden: true
# ---
# 
# A string `S` of lowercase letters is given.  Then, we may make any number of
# _moves_.
# 
# In each move, we choose one of the first `K` letters (starting from the left),
# remove it, and place it at the end of the string.
# 
# Return the lexicographically smallest string we could have after any number of
# moves.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: S = "cba", K = 1
#     Output: "acb"
#     Explanation:
#     In the first move, we move the 1st character ("c") to the end, obtaining the string "bac".
#     In the second move, we move the 1st character ("b") to the end, obtaining the final result "acb".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: S = "baaca", K = 3
#     Output: "aaabc"
#     Explanation:
#     In the first move, we move the 1st character ("b") to the end, obtaining the string "aacab".
#     In the second move, we move the 3rd character ("c") to the end, obtaining the final result "aaabc".
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= K <= S.length <= 1000`
#   2. `S` consists of lowercase letters only.
# 
# 
## @lc code=start
## add your code here:
## @lc code=end
