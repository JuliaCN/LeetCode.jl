# ---
# title: 712. Minimum ASCII Delete Sum for Two Strings
# id: problem712
# author: Indigo
# date: 2021-06-29
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/minimum-ascii-delete-sum-for-two-strings/description/>
# hidden: true
# ---
# 
# Given two strings `s1, s2`, find the lowest ASCII sum of deleted characters to
# make two strings equal.
# 
# **Example 1:**  
# 
#     
#     
#     Input: s1 = "sea", s2 = "eat"
#     Output: 231
#     Explanation: Deleting "s" from "sea" adds the ASCII value of "s" (115) to the sum.
#     Deleting "t" from "eat" adds 116 to the sum.
#     At the end, both strings are equal, and 115 + 116 = 231 is the minimum sum possible to achieve this.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: s1 = "delete", s2 = "leet"
#     Output: 403
#     Explanation: Deleting "dee" from "delete" to turn the string into "let",
#     adds 100[d]+101[e]+101[e] to the sum.  Deleting "e" from "leet" adds 101[e] to the sum.
#     At the end, both strings are equal to "let", and the answer is 100+101+101+101 = 403.
#     If instead we turned both strings into "lee" or "eet", we would get answers of 433 or 417, which are higher.
#     
# 
# **Note:**
# 
# * `0 < s1.length, s2.length <= 1000`.
# * All elements of each string will have an ASCII value in `[97, 122]`.
# 
# 
## @lc code=start
using LeetCode

function minimum_delete_sum(s1::String, s2::String)
    m, n = length(s1) + 1, length(s2) + 1
    dp = fill(0, m, n)
    dp[2:end, 1] .= cumsum(codeunits(s1))
    dp[1, 2:end] .= cumsum(codeunits(s2))
    for i in 2:m, j in 2:n
        dp[i, j] = (s1[i - 1] == s2[j - 1]) ? (dp[i - 1, j - 1]) :
                   min(dp[i - 1, j] + Int(s1[i - 1]), dp[i, j - 1] + Int(s2[j - 1]))
    end
    return dp[m, n]
end
## @lc code=end
