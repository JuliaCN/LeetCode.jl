# ---
# title: 777. Swap Adjacent in LR String
# id: problem777
# author: Indigo
# date: 2021-01-28
# difficulty: Medium
# categories: Brainteaser
# link: <https://leetcode.com/problems/swap-adjacent-in-lr-string/description/>
# hidden: true
# ---
# 
# In a string composed of `'L'`, `'R'`, and `'X'` characters, like
# `"RXXLRXRXL"`, a move consists of either replacing one occurrence of `"XL"`
# with `"LX"`, or replacing one occurrence of `"RX"` with `"XR"`. Given the
# starting string `start` and the ending string `end`, return `True` if and only
# if there exists a sequence of moves to transform one string to the other.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: start = "RXXLRXRXL", end = "XRLXXRRLX"
#     Output: true
#     Explanation: We can transform start to end following these steps:
#     RXXLRXRXL ->
#     XRXLRXRXL ->
#     XRLXRXRXL ->
#     XRLXXRRXL ->
#     XRLXXRRLX
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: start = "X", end = "L"
#     Output: false
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: start = "LLR", end = "RRL"
#     Output: false
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: start = "XL", end = "LX"
#     Output: true
#     
# 
# **Example 5:**
# 
#     
#     
#     Input: start = "XLLR", end = "LXLX"
#     Output: false
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= start.length <= 104`
#   * `start.length == end.length`
#   * Both `start` and `end` will only consist of characters in `'L'`, `'R'`, and `'X'`.
# 
# 
## @lc code=start
using LeetCode

function can_transform(s::String, t::String)
    i, j = 1, 1
    len = length(s)
    len != length(t) && return false
    while i <= len || j <= len
        while i <= len && s[i] == 'X'; i += 1; end
        while j <= len && t[j] == 'X' ; j += 1; end
        ((i <= len) ⊻ (j <= len)) && return false
        if i <= len && j <= len
            (s[i] != t[j] || (s[i] == 'L' && i < j) || (s[i] == 'R' && i > j)) && return false
        end
        i += 1; j += 1
    end
    return true
end
## @lc code=end
