# ---
# title: 132. Palindrome Partitioning II
# id: problem132
# author: Indigo
# date: 2021-03-08
# difficulty: Hard
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/palindrome-partitioning-ii/description/>
# hidden: true
# ---
# 
# Given a string `s`, partition `s` such that every substring of the partition
# is a palindrome.
# 
# Return _the minimum cuts needed_ for a palindrome partitioning of `s`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "aab"
#     Output: 1
#     Explanation: The palindrome partitioning ["aa","b"] could be produced using 1 cut.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "a"
#     Output: 0
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "ab"
#     Output: 1
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 2000`
#   * `s` consists of lower-case English letters only.
# 
# 
## @lc code=start
using LeetCode

function partition_ps132(s::String)
    len = length(s)
    is_ps = fill(true, len, len)
    dp = fill(typemax(Int) >> 4, len)
    dp[1] = 0
    for i in len:-1:1, j in (i + 1):len
        is_ps[i, j] = (s[i] == s[j]) && is_ps[i + 1, j - 1]
    end
    for i in 2:len
        if is_ps[1, i]
            dp[i] = 0
        else
            for j in 2:i
                (is_ps[j, i]) && (dp[i] = min(dp[i], dp[j - 1] + 1))
            end
        end
    end
    return dp[end]
end
## @lc code=end
