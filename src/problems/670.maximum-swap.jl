# ---
# title: 670. Maximum Swap
# id: problem670
# author: Indigo
# date: 2021-06-28
# difficulty: Medium
# categories: Array, Math
# link: <https://leetcode.com/problems/maximum-swap/description/>
# hidden: true
# ---
# 
# Given a non-negative integer, you could swap two digits **at most** once to
# get the maximum valued number. Return the maximum valued number you could get.
# 
# **Example 1:**  
# 
#     
#     
#     Input: 2736
#     Output: 7236
#     Explanation: Swap the number 2 and the number 7.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: 9973
#     Output: 9973
#     Explanation: No swap.
#     
# 
# **Note:**  
# 
#   1. The given number is in the range [0, 108]
# 
# 
## @lc code=start
using LeetCode

function maximum_swap670(nums::Int)
    dgs = digits(nums)
    for i in 1:length(dgs)
        cur = @view(dgs[i:end])
        max_idx = argmax(cur)
        max_idx == lastindex(cur) && continue
        dgs[end], dgs[max_idx] = dgs[max_idx], dgs[end]
        break
    end
    return [10 .^ (0:length(dgs)-1);]' * dgs
end
## @lc code=end
