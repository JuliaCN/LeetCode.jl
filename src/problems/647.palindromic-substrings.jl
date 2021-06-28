# ---
# title: 647. Palindromic Substrings
# id: problem647
# author: Indigo
# date: 2021-06-27
# difficulty: Medium
# categories: String, Dynamic Programming
# link: <https://leetcode.com/problems/palindromic-substrings/description/>
# hidden: true
# ---
# 
# Given a string, your task is to count how many palindromic substrings in this
# string.
# 
# The substrings with different start indexes or end indexes are counted as
# different substrings even they consist of same characters.
# 
# **Example 1:**
# 
#     
#     
#     Input: "abc"
#     Output: 3
#     Explanation: Three palindromic strings: "a", "b", "c".
#     
# 
# 
# 
# **Example 2:**
# 
#     
#     
#     Input: "aaa"
#     Output: 6
#     Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
#     
# 
# 
# 
# **Note:**
# 
#   1. The input string length won't exceed 1000.
# 
# 
# 
# 
## @lc code=start
using LeetCode

function count_substrings(s::String)
    len, res = length(s), 0
    cu = codeunits(s)
    for i in 1:len, j in (0, 1)
        l, r = i, i + j
        while l >= 1 && r <= len && cu[l] == cu[r]
            res += 1
            l -= 1
            r += 1            
        end
    end
    return res
end
## @lc code=end
