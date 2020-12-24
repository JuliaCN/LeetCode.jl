# ---
# title: 316. Remove Duplicate Letters
# id: problem316
# author: Indigo
# date: 2020-12-20
# difficulty: Medium
# categories: String, Stack, Greedy
# link: <https://leetcode.com/problems/remove-duplicate-letters/description/>
# hidden: true
# ---
# 
# Given a string `s`, remove duplicate letters so that every letter appears once
# and only once. You must make sure your result is **the smallest in
# lexicographical order** among all possible results.
# 
# **Note:** This question is the same as 1081:
# <https://leetcode.comhttps://leetcode.com/problems/smallest-subsequence-of-distinct-characters/>
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: s = "bcabc"
#     Output: "abc"
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: s = "cbacdcbc"
#     Output: "acdb"
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= s.length <= 104`
#   * `s` consists of lowercase English letters.
# 
# 
## @lc code=start
using LeetCode

function remove_duplicate_letters(s::String)::String
    stk = Char[]
    added = Set{Char}()
    remain = fill(0, 26)
    for ch in s
        remain[ch - 'a' + 1] += 1 
    end
    for ch in s
        if !(ch in added)
            while !isempty(stk) && stk[end] > ch && remain[stk[end] - 'a' + 1] > 0
                pop!(added, pop!(stk))
            end
            push!(added, ch)
            push!(stk, ch)
        end
        remain[ch - 'a' + 1] -= 1
    end
    return join(stk)
end
## @lc code=end
