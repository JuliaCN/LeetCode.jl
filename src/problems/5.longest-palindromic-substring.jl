# ---
# title: 5. Longest Palindromic Substring
# id: problem5
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String, Dynamic Programming
# link: <https://leetcode.com/problems/longest-palindromic-substring/description/>
# hidden: true
# ---
# 
# Given a string `s`, return  _the longest palindromic substring_ in `s`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "babad"
#     Output: "bab"
#     **Note:** "aba" is also a valid answer.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "cbbd"
#     Output: "bb"
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: s = "a"
#     Output: "a"
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: s = "ac"
#     Output: "a"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 1000`
#   * `s` consist of only digits and English letters (lower-case and/or upper-case),
# 
# 
## @lc code=start
using LeetCode

function longest_palindrome(s::String)::AbstractString
    res = ""
    for i in 1:length(s)
        s_odd = _longest_palindrome(s, i, i)
        if length(s_odd) > length(res)
            res = s_odd
        end
        s_even = _longest_palindrome(s, i, i + 1)
        if length(s_even) > length(res)
            res = s_even
        end
    end
    return res
end

function _longest_palindrome(s, l, r)
    while l >= 1 && r <= length(s) && s[l] == s[r]
        l -= 1
        r += 1
    end
    return SubString(s, l + 1, r - 1)
end
## @lc code=end
