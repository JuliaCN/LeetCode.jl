# ---
# title: 115. Distinct Subsequences
# id: problem115
# author: Indigo
# date: 2021-03-17
# difficulty: Hard
# categories: String, Dynamic Programming
# link: <https://leetcode.com/problems/distinct-subsequences/description/>
# hidden: true
# ---
# 
# Given two strings `s` and `t`, return _the  number of distinct subsequences of
# `s` which equals `t`_.
# 
# A string's **subsequence** is a new string formed from the original string by
# deleting some (can be none) of the characters without disturbing the relative
# positions of the remaining characters. (i.e., `"ACE"` is a subsequence of
# `"ABCDE"` while `"AEC"` is not).
# 
# It's guaranteed the answer fits on a 32-bit signed integer.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "rabbbit", t = "rabbit"
#     Output: 3
#     Explanation:
#     As shown below, there are 3 ways you can generate "rabbit" from S.
#     **_rabb_** b ** _it_**
#     **_ra_** b ** _bbit_**
#     **_rab_** b ** _bit_**
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "babgbag", t = "bag"
#     Output: 5
#     Explanation:
#     As shown below, there are 5 ways you can generate "bag" from S.
#     **_ba_** b _ **g**_ bag
#     **_ba_** bgba ** _g_**
#     _**b**_ abgb ** _ag_**
#     ba _ **b**_ gb _ **ag**_
#     babg ** _bag_**
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= s.length, t.length <= 1000`
#   * `s` and `t` consist of English letters.
# 
# 
## @lc code=start
using LeetCode

function num_distinct(s::String, t::String)
    len_s, len_t = length(s), length(t)
    dp = fill(0, len_s, len_t)
    dp[1, 1] = s[1] == t[1]
    for i in 2:len_s
        dp[i, 1] = dp[i - 1, 1] + (s[i] == t[1])
    end
    for j in 2:len_t, i in j:len_s
        dp[i, j] = dp[i - 1, j] + dp[i - 1, j - 1] * (s[i] == t[j])
    end
    dp[end, end]
end
## @lc code=end
