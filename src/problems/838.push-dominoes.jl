# ---
# title: 838. Push Dominoes
# id: problem838
# author: zhwang
# date: 2022-02-21
# difficulty: Medium
# categories: Two Pointers, Dynamic Programming
# link: <https://leetcode.com/problems/push-dominoes/description/>
# hidden: true
# ---
# 
# There are `N` dominoes in a line, and we place each domino vertically upright.
# 
# In the beginning, we simultaneously push some of the dominoes either to the
# left or to the right.
# 
# ![](https://s3-lc-upload.s3.amazonaws.com/uploads/2018/05/18/domino.png)
# 
# After each second, each domino that is falling to the left pushes the adjacent
# domino on the left.
# 
# Similarly, the dominoes falling to the right push their adjacent dominoes
# standing on the right.
# 
# When a vertical domino has dominoes falling on it from both sides, it stays
# still due to the balance of the forces.
# 
# For the purposes of this question, we will consider that a falling domino
# expends no additional force to a falling or already fallen domino.
# 
# Given a string "S" representing the initial state. `S[i] = 'L'`, if the i-th
# domino has been pushed to the left; `S[i] = 'R'`, if the i-th domino has been
# pushed to the right; `S[i] = '.'`, if the `i`-th domino has not been pushed.
# 
# Return a string representing the final state.
# 
# **Example 1:**
# 
#     
#     
#     Input: ".L.R...LR..L.."
#     Output: "LL.RR.LLRRLL.."
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: "RR.L"
#     Output: "RR.L"
#     Explanation: The first domino expends no additional force on the second domino.
#     
# 
# **Note:**
# 
#   1. `0 <= N <= 10^5`
#   2. String `dominoes` contains only `'L`', `'R'` and `'.'`
# 
# 
## @lc code=start
using LeetCode

function push_dominoes(dominoes::String)::String
    ans = ""
    rules = ("R.L" => "T", ".L" => "LL", "R." => "RR", "T" => "R.L")
    while dominoes != ans
        ans = dominoes
        dominoes = foldl(replace, [dominoes, rules...])
    end
    return ans
end
## @lc code=end
