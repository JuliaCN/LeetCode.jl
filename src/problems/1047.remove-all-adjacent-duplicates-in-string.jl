# ---
# title: 1047. Remove All Adjacent Duplicates In String
# id: problem1047
# author: Qling
# date: 2021-03-09
# difficulty: Easy
# categories: Stack
# link: <https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/description/>
# hidden: true
# ---
# 
# Given a string `S` of lowercase letters, a _duplicate removal_ consists of
# choosing two adjacent and equal letters, and removing them.
# 
# We repeatedly make duplicate removals on S until we no longer can.
# 
# Return the final string after all such duplicate removals have been made.  It
# is guaranteed the answer is unique.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: "abbaca"
#     Output: "ca"
#     Explanation:
#     For example, in "abbaca" we could remove "bb" since the letters are adjacent and equal, and this is the only possible move.  The result of this move is that the string is "aaca", of which only "aa" is possible, so the final string is "ca".
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= S.length <= 20000`
#   2. `S` consists only of English lowercase letters.
# 
# 
## @lc code=start
using LeetCode

function remove_duplicates(S::String)::String
    stk = Char[]

    for ch in S
        if !isempty(stk) && stk[end] == ch
            pop!(stk)
        else
            push!(stk, ch)
        end
    end

    return join(stk)
end
## @lc code=end
