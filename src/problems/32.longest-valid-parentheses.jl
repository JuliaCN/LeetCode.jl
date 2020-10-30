"""
@lc app=leetcode id=32 lang=python3

[32] Longest Valid Parentheses

https://leetcode.com/problems/longest-valid-parentheses/description/

algorithms
Hard (27.07%)
Likes:    3745
Dislikes: 141
Total Accepted:    299.6K
Total Submissions: 1.1M
Testcase Example:  '"(()"'

Given a string containing just the characters '(' and ')', find the length of
the longest valid (well-formed) parentheses substring.

Example 1:


Input: "(()"
Output: 2
Explanation: The longest valid parentheses substring is "()"


Example 2:


Input: ")()())"
Output: 4
Explanation: The longest valid parentheses substring is "()()"




@lc code=start
"""
function longest_valid_parentheses(s::String)::Int
    dp = zeros(Int, length(s))
    n = 0
    for i in 2:length(s)
        if s[i] == ')'
            # case 1: ()()
            if s[i-1] == '('
                dp[i] = i == 2 ? 2 : dp[i-2] + 2
            # case 2: (())
            else
                i₍ = i - dp[i-1] - 1
                if i₍ >= 1 && s[i₍] == '('
                    if dp[i-1] > 0
                        dp[i] = dp[i-1] + 2 + (i₍ == 1 ? 0 : dp[i₍-1])
                    end
                end
            end
            n = max(n, dp[i])
        end
    end
    n
end