"""
@lc app=leetcode id=10 lang=python3

[10] Regular Expression Matching

https://leetcode.com/problems/regular-expression-matching/description/

algorithms
Hard (26.06%)
Likes:    4558
Dislikes: 731
Total Accepted:    454.2K
Total Submissions: 1.7M
Testcase Example:  '"aa"\n"a"'

Given an input string (s) and a pattern (p), implement regular expression
matching with support for '.' and '*'.


'.' Matches any single character.
'*' Matches zero or more of the preceding element.


The matching should cover the entire input string (not partial).

Note:


s could be empty and contains only lowercase letters a-z.
p could be empty and contains only lowercase letters a-z, and characters like
. or *.


Example 1:


Input:
s = "aa"
p = "a"
Output: false
Explanation: "a" does not match the entire string "aa".


Example 2:


Input:
s = "aa"
p = "a*"
Output: true
Explanation: '*' means zero or more of the preceding element, 'a'. Therefore,
by repeating 'a' once, it becomes "aa".


Example 3:


Input:
s = "ab"
p = ".*"
Output: true
Explanation: ".*" means "zero or more (*) of any character (.)".


Example 4:


Input:
s = "aab"
p = "c*a*b"
Output: true
Explanation: c can be repeated 0 times, a can be repeated 1 time. Therefore,
it matches "aab".


Example 5:


Input:
s = "mississippi"
p = "mis*is*p*."
Output: false




@lc code=start
"""
function is_match(s::AbstractString, p::AbstractString)::Bool
    if isempty(p)
        isempty(s)
    elseif length(p) >= 2 && p[2] == '*'
        if !isempty(s) && (s[1] == p[1] || p[1] == '.')
            # case 1: * means 1 or more of previous char, then the first char of `s` and `p` must match.
            is_match(SubString(s, 2), p)
        else
            # case 2: * means zero of previous char, ignore it and match the rest
            is_match(s, SubString(p, 3))
        end
    else
        if isempty(s)
            false  # length mismatch
        elseif (s[1] == p[1] || p[1] == '.')
            is_match(SubString(s, 2), SubString(p, 2))
        else
            false  # first char mismatch
        end
    end
end
