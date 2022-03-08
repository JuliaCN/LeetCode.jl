# ---
# title: 1092. Shortest Common Supersequence 
# id: problem1092
# author: Indigo
# date: 2022-03-08
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/shortest-common-supersequence/description/>
# hidden: true
# ---
# 
# Given two strings `str1` and `str2`, return the shortest string that has both
# `str1` and `str2` as subsequences.  If multiple answers exist, you may return
# any of them.
# 
# _(A string S is a subsequence of string T if deleting some number of
# characters from T (possibly 0, and the characters are chosen _anywhere_ from
# T) results in the string S.)_
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: str1 = "abac", str2 = "cab"
#     Output: "cabac"
#     Explanation:
#     str1 = "abac" is a subsequence of "cabac" because we can delete the first "c".
#     str2 = "cab" is a subsequence of "cabac" because we can delete the last "ac".
#     The answer provided is the shortest such string that satisfies these properties.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= str1.length, str2.length <= 1000`
#   2. `str1` and `str2` consist of lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function shortest_common_supersequence(str1::String, str2::String)
    m, n = length(str1), length(str2)
    dp = OffsetArray(fill(0, m + 1, n + 1), -1, -1)
    for i in 1:m, j in 1:n
        dp[i, j] = max(
            dp[i - 1, j], dp[i, j - 1], dp[i - 1, j - 1] + Int(str1[i] == str2[j])
        )
    end
    res = ""
    coord = CartesianIndex(m, n)
    while coord != CartesianIndex(0, 0)
        c1 = coord - CartesianIndex(1, 0)
        c2 = coord - CartesianIndex(0, 1)
        if c1 ∈ CartesianIndices(dp) && dp[coord] == dp[c1]
            res *= str1[coord[1]]
            coord -= CartesianIndex(1, 0)
        elseif c2 ∈ CartesianIndices(dp) && dp[coord] == dp[c2]
            res *= str2[coord[2]]
            coord -= CartesianIndex(0, 1)
        else
            res *= str1[coord[1]]
            coord -= CartesianIndex(1, 1)
        end
    end
    return reverse(res)
end
## @lc code=end
