# ---
# title: 32. Longest Valid Parentheses
# id: problem32
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: String, Dynamic Programming
# link: <https://leetcode.com/problems/longest-valid-parentheses/description/>
# hidden: true
# ---
# 
# Given a string containing just the characters `'('` and `')'`, find the length
# of the longest valid (well-formed) parentheses substring.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "(()"
#     Output: 2
#     Explanation: The longest valid parentheses substring is "()".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = ")()())"
#     Output: 4
#     Explanation: The longest valid parentheses substring is "()()".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = ""
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= s.length <= 3 * 104`
#   * `s[i]` is `'('`, or `')'`.
# 
# 
## @lc code=start
using LeetCode

function longest_valid_parentheses(s::String)::Int
    dp = zeros(Int, length(s))
    n = 0
    for i in 2:length(s)
        if s[i] == ')'
            if s[i - 1] == '('
                ## case 1: ()()
                dp[i] = i == 2 ? 2 : dp[i - 2] + 2
            else
                ## case 2: (())
                i₍ = i - dp[i - 1] - 1
                if i₍ >= 1 && s[i₍] == '('
                    if dp[i - 1] > 0
                        dp[i] = dp[i - 1] + 2 + (i₍ == 1 ? 0 : dp[i₍ - 1])
                    end
                end
            end
            n = max(n, dp[i])
        end
    end
    return n
end
## @lc code=end
