# ---
# title: 10. Regular Expression Matching
# id: problem10
# author: Tian Jun
# date: 2020-10-31
# difficulty: Hard
# categories: String, Dynamic Programming, Backtracking
# link: <https://leetcode.com/problems/regular-expression-matching/description/>
# hidden: true
# ---
# 
# Given an input string (`s`) and a pattern (`p`), implement regular expression
# matching with support for `'.'` and `'*'` where:` `
# 
#   * `'.'` Matches any single character.​​​​
#   * `'*'` Matches zero or more of the preceding element.
# 
# The matching should cover the **entire** input string (not partial).
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "aa", p = "a"
#     Output: false
#     Explanation: "a" does not match the entire string "aa".
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "aa", p = "a*"
#     Output: true
#     Explanation:  '*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "ab", p = ".*"
#     Output: true
#     Explanation:  ".*" means "zero or more (*) of any character (.)".
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "aab", p = "c*a*b"
#     Output: true
#     Explanation:  c can be repeated 0 times, a can be repeated 1 time. Therefore, it matches "aab".
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: s = "mississippi", p = "mis*is*p*."
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= s.length <= 20`
#   * `0 <= p.length <= 30`
#   * `s` contains only lowercase English letters.
#   * `p` contains only lowercase English letters, `'.'`, and `'*'`.
#   * It is guaranteed for each appearance of the character `'*'`, there will be a previous valid character to match.
# 
# 
## @lc code=start
using LeetCode

function is_match(s::AbstractString, p::AbstractString)::Bool
    if isempty(p)
        isempty(s)
    elseif length(p) >= 2 && p[2] == '*'
        if !isempty(s) && (s[1] == p[1] || p[1] == '.')
            ## case 1: * means 1 or more of previous char, then the first char of `s` and `p` must match.
            is_match(SubString(s, 2), p)
        else
            ## case 2: * means zero of previous char, ignore it and match the rest
            is_match(s, SubString(p, 3))
        end
    else
        if isempty(s)
            false  ## length mismatch
        elseif (s[1] == p[1] || p[1] == '.')
            is_match(SubString(s, 2), SubString(p, 2))
        else
            false  ## first char mismatch
        end
    end
end
## @lc code=end
