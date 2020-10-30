"""

@lc app=leetcode id=5 lang=python3

[5] Longest Palindromic Substring

https://leetcode.com/problems/longest-palindromic-substring/description/

algorithms
Medium (28.55%)
Likes:    7706
Dislikes: 565
Total Accepted:    1M
Total Submissions: 3.4M
Testcase Example:  '"babad"'

Given a string s, find the longest palindromic substring in s. You may assume
that the maximum length of s is 1000.

Example 1:


Input: "babad"
Output: "bab"
Note: "aba" is also a valid answer.


Example 2:


Input: "cbbd"
Output: "bb"




@lc code=start
"""
function longest_palindrome(s::String)::AbstractString
    res = ""
    for i in 1:length(s)
        s_odd = _longest_palindrome(s, i, i)
        if length(s_odd) > length(res)
            res = s_odd
        end
        s_even = _longest_palindrome(s, i, i+1)
        if length(s_even) > length(res)
            res = s_even
        end
    end
    res
end

function _longest_palindrome(s, l, r)
    while l >= 1 && r <= length(s) && s[l] == s[r]
        l -= 1
        r += 1
    end
    SubString(s, l+1, r-1)
end