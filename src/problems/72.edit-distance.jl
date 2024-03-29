# ---
# title: 72. Edit Distance
# id: problem72
# author: Qling
# date: 2021-03-17
# difficulty: Hard
# categories: String, Dynamic Programming
# link: <https://leetcode.com/problems/edit-distance/description/>
# hidden: true
# ---
# 
# Given two strings `word1` and `word2`, return _the minimum number of
# operations required to convert`word1` to `word2`_.
# 
# You have the following three operations permitted on a word:
# 
#   * Insert a character
#   * Delete a character
#   * Replace a character
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: word1 = "horse", word2 = "ros"
#     Output: 3
#     Explanation: 
#     horse -> rorse (replace 'h' with 'r')
#     rorse -> rose (remove 'r')
#     rose -> ros (remove 'e')
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: word1 = "intention", word2 = "execution"
#     Output: 5
#     Explanation: 
#     intention -> inention (remove 't')
#     inention -> enention (replace 'i' with 'e')
#     enention -> exention (replace 'n' with 'x')
#     exention -> exection (replace 'n' with 'c')
#     exection -> execution (insert 'u')
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= word1.length, word2.length <= 500`
#   * `word1` and `word2` consist of lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function min_distance(word1::String, word2::String)::Int32
    m, n = length(word1) + 1, length(word2) + 1
    dp = zeros(Int32, m, n)
    dp[:, 1] .= (1:m) .- 1
    dp[1, :] .= (1:n) .- 1

    for i in 2:m, j in 2:n
        dp[i, j] =
            1 + min(
                dp[i - 1, j - 1] - Int(word1[i - 1] == word2[j - 1]),
                dp[i, j - 1],
                dp[i - 1, j],
            )
    end
    return dp[end, end]
end

## @lc code=end
