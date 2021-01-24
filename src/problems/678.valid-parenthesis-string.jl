# ---
# title: 678. Valid Parenthesis String
# id: problem678
# author: Indigo
# date: 2021-01-24
# difficulty: Medium
# categories: String
# link: <https://leetcode.com/problems/valid-parenthesis-string/description/>
# hidden: true
# ---
# 
# Given a string containing only three types of characters: '(', ')' and '*',
# write a function to check whether this string is valid. We define the validity
# of a string by these rules:
# 
#   1. Any left parenthesis `'('` must have a corresponding right parenthesis `')'`.
#   2. Any right parenthesis `')'` must have a corresponding left parenthesis `'('`.
#   3. Left parenthesis `'('` must go before the corresponding right parenthesis `')'`.
#   4. `'*'` could be treated as a single right parenthesis `')'` or a single left parenthesis `'('` or an empty string.
#   5. An empty string is also valid.
# 
# **Example 1:**  
# 
#     
#     
#     Input: "()"
#     Output: True
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: "(*)"
#     Output: True
#     
# 
# **Example 3:**  
# 
#     
#     
#     Input: "(*))"
#     Output: True
#     
# 
# **Note:**  
# 
#   1. The string size will be in the range [1, 100].
# 
# 
## @lc code=start
using LeetCode

function check_valid_string(s::String)
    lo, hi = 0, 0
    for ch in s
        if ch == '('
            lo += 1
            hi += 1
        elseif ch == ')'
            (lo > 0) && (lo -= 1)
            hi -= 1
        else
            (lo > 0) && (lo -= 1)
            hi += 1
        end
        if hi < 0
            return false
        end
    end
    return lo == 0
end
## @lc code=end
