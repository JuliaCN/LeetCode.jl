# ---
# title: 898. Bitwise ORs of Subarrays
# id: problem898
# author: Indigo
# date: 2021-02-01
# difficulty: Medium
# categories: Dynamic Programming, Bit Manipulation
# link: <https://leetcode.com/problems/bitwise-ors-of-subarrays/description/>
# hidden: true
# ---
# 
# We have an array `A` of non-negative integers.
# 
# For every (contiguous) subarray `B = [A[i], A[i+1], ..., A[j]]` (with `i <=
# j`), we take the bitwise OR of all the elements in `B`, obtaining a result
# `A[i] | A[i+1] | ... | A[j]`.
# 
# Return the number of possible results.  (Results that occur more than once are
# only counted once in the final answer.)
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: [0]
#     Output: 1
#     Explanation:
#     There is only one possible result: 0.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [1,1,2]
#     Output: 3
#     Explanation:
#     The possible subarrays are [1], [1], [2], [1, 1], [1, 2], [1, 1, 2].
#     These yield the results 1, 1, 2, 1, 3, 3.
#     There are 3 unique values, so the answer is 3.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: [1,2,4]
#     Output: 6
#     Explanation:
#     The possible results are 1, 2, 3, 4, 6, and 7.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 50000`
#   2. `0 <= A[i] <= 10^9`
# 
# 
## @lc code=start
using LeetCode

function subarray_bitwise_ors(A::Vector{Int})
    res = Set{Int}()
    cur = Set{Int}()
    for num in A
        cur2 = Set{Int}()
        for n in cur
            push!(cur2, n | num)
        end
        push!(cur2, num)
        cur = cur2
        union!(res, cur)
    end
    return length(res)
end
## @lc code=end
