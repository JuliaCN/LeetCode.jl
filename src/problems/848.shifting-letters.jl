# ---
# title: 848. Shifting Letters
# id: problem848
# author: Tian Jun
# date: 2020-10-31
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/shifting-letters/description/>
# hidden: true
# ---
# 
# We have a string `S` of lowercase letters, and an integer array `shifts`.
# 
# Call the _shift_ of a letter, the next letter in the alphabet, (wrapping
# around so that `'z'` becomes `'a'`).
# 
# For example, `shift('a') = 'b'`, `shift('t') = 'u'`, and `shift('z') = 'a'`.
# 
# Now for each `shifts[i] = x`, we want to shift the first `i+1` letters of `S`,
# `x` times.
# 
# Return the final string after all such shifts to `S` are applied.
# 
# **Example 1:**
# 
#     
#     
#     Input: S = "abc", shifts = [3,5,9]
#     Output: "rpl"
#     Explanation:
#     We start with "abc".
#     After shifting the first 1 letters of S by 3, we have "dbc".
#     After shifting the first 2 letters of S by 5, we have "igc".
#     After shifting the first 3 letters of S by 9, we have "rpl", the answer.
#     
# 
# **Note:**
# 
#   1. `1 <= S.length = shifts.length <= 20000`
#   2. `0 <= shifts[i] <= 10 ^ 9`
# 
# 
## @lc code=start
using LeetCode

function shifting_letters(s::String, shift::Vector{Int})::String
    shift = cumsum(@view(shift[end:-1:1]))
    res = codeunits(s)[:]
    for i in 1:length(shift)
        res[i] += shift[end - i + 1]
    end
    return String(res)
end
## @lc code=end
