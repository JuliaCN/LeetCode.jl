# ---
# title: 97. Interleaving String
# id: problem97
# author: Indigo
# date: 2021-06-02
# difficulty: Hard
# categories: String, Dynamic Programming
# link: <https://leetcode.com/problems/interleaving-string/description/>
# hidden: true
# ---
# 
# Given strings `s1`, `s2`, and `s3`, find whether `s3` is formed by an
# **interleaving** of `s1` and `s2`.
# 
# An **interleaving** of two strings `s` and `t` is a configuration where they
# are divided into **non-empty** substrings such that:
# 
#   * `s = s1 + s2 + ... + sn`
#   * `t = t1 + t2 + ... + tm`
#   * `|n - m| <= 1`
#   * The **interleaving** is `s1 + t1 + s2 + t2 + s3 + t3 + ...` or `t1 + s1 + t2 + s2 + t3 + s3 + ...`
# 
# **Note:** `a + b` is the concatenation of strings `a` and `b`.
# 
# 
# 
# **Example 1:**
# 
# ![](https://assets.leetcode.com/uploads/2020/09/02/interleave.jpg)
# 
#     
#     
#     Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbcbcac"
#     Output: true
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbbaccc"
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s1 = "", s2 = "", s3 = ""
#     Output: true
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= s1.length, s2.length <= 100`
#   * `0 <= s3.length <= 200`
#   * `s1`, `s2`, and `s3` consist of lower-case English letters.
# 
# 
## @lc code=start
using LeetCode

function is_interleave(s1::String, s2::String, s3::String)
    len1, len2, len3 = length(s1), length(s2), length(s3)
    len1 + len2 != len3 && return false
    dp = OffsetArray(fill(false, len1 + 1, len2 + 1), -1, -1)
    dp[0, 0] = true
    for i in 0:len1, j in 0:len2
        p = i + j
        i > 0 && (dp[i, j] |= dp[i - 1, j] && s1[i] == s3[p])
        j > 0 && (dp[i, j] |= dp[i, j - 1] && s2[j] == s3[p])
    end
    return dp[end, end]
end
## @lc code=end
