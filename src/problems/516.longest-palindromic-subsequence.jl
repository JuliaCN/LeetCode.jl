# ---
# title: 516. Longest Palindromic Subsequence
# id: problem516
# author: Indigo
# date: 2021-06-22
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/longest-palindromic-subsequence/description/>
# hidden: true
# ---
# 
# Given a string s, find the longest palindromic subsequence's length in s. You
# may assume that the maximum length of s is 1000.
# 
# **Example 1:**  
# Input:
# 
#     
#     
#     "bbbab"
#     
# 
# Output:
# 
#     
#     
#     4
#     
# 
# One possible longest palindromic subsequence is "bbbb".
# 
# 
# 
# **Example 2:**  
# Input:
# 
#     
#     
#     "cbbd"
#     
# 
# Output:
# 
#     
#     
#     2
#     
# 
# One possible longest palindromic subsequence is "bb".
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 1000`
#   * `s` consists only of lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function longest_palindrome_subseq(s::String)
    len = length(s)
    dp = fill(0, len, len)
    for i in len:-1:1
        dp[i, i] = 1
        for j in i+1:len
            dp[i, j] = (s[i] == s[j]) ? dp[i + 1, j - 1] + 2 : max(dp[i + 1, j], dp[i, j - 1])
        end
    end
    return dp[1, len]
end
## @lc code=end
