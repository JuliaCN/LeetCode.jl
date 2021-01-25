# ---
# title: 962. Maximum Width Ramp
# id: problem962
# author: Indigo
# date: 2021-01-25
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/maximum-width-ramp/description/>
# hidden: true
# ---
# 
# Given an array `A` of integers, a _ramp_  is a tuple `(i, j)` for which `i <
# j` and `A[i] <= A[j]`.  The width of such a ramp is `j - i`.
# 
# Find the maximum width of a ramp in `A`.  If one doesn't exist, return 0.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [6,0,8,2,1,5]
#     Output: 4
#     Explanation:
#     The maximum width ramp is achieved at (i, j) = (1, 5): A[1] = 0 and A[5] = 5.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [9,8,1,0,1,9,4,0,4,1]
#     Output: 7
#     Explanation:
#     The maximum width ramp is achieved at (i, j) = (2, 9): A[2] = 1 and A[9] = 1.
#     
# 
# 
# 
# **Note:**
# 
#   1. `2 <= A.length <= 50000`
#   2. `0 <= A[i] <= 50000`
# 
# 
# 
# 
## @lc code=start
using LeetCode

function max_width_ramp(A::Vector{Int})
    res = 0
    stk = [1]
    for i in 2:length(A)
        (A[i] < A[stk[end]]) && (push!(stk, i))
    end
    println(stk)
    for i in length(A):-1:2
        idx = i
        while !isempty(stk) && A[stk[end]] <= A[i]
            idx = pop!(stk)
        end
        res = max(i - idx, res)
    end
    return res
end
## @lc code=end
