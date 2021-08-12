# ---
# title: 907. Sum of Subarray Minimums
# id: problem907
# author: Indigo
# date: 2021-07-12
# difficulty: Medium
# categories: Array, Stack
# link: <https://leetcode.com/problems/sum-of-subarray-minimums/description/>
# hidden: true
# ---
# 
# Given an array of integers `A`, find the sum of `min(B)`, where `B` ranges
# over every (contiguous) subarray of `A`.
# 
# Since the answer may be large, **return the answer modulo`10^9 + 7`.**
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [3,1,2,4]
#     Output: 17
#     Explanation: Subarrays are [3], [1], [2], [4], [3,1], [1,2], [2,4], [3,1,2], [1,2,4], [3,1,2,4]. 
#     Minimums are 3, 1, 2, 4, 1, 1, 2, 1, 1, 1.  Sum is 17.
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 30000`
#   2. `1 <= A[i] <= 30000`
# 
# 
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: arr = [3,1,2,4]
#     Output: 17
#     Explanation: 
#     Subarrays are [3], [1], [2], [4], [3,1], [1,2], [2,4], [3,1,2], [1,2,4], [3,1,2,4]. 
#     Minimums are 3, 1, 2, 4, 1, 1, 2, 1, 1, 1.
#     Sum is 17.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: arr = [11,81,94,43,3]
#     Output: 444
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= arr.length <= 3 * 104`
#   * `1 <= arr[i] <= 3 * 104`
# 
# 
## @lc code=start
using LeetCode

function sum_subarray_mins(arr::Vector{Int})
    csum, res, md = 0, 0, Int(1e9) + 7
    stk = Int[]
    for i in eachindex(arr)
        while !isempty(stk) && arr[stk[end]] >= arr[i]
            tp = pop!(stk)
            ntop = isempty(stk) ? 0 : stk[end]
            csum += (arr[i] - arr[tp]) * (tp - ntop);
        end
        csum += arr[i]
        push!(stk, i)
        res += csum
    end
    return res % md
end
## @lc code=end
