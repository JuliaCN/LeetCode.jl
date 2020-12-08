# ---
# title: 454. 4Sum II
# id: problem454
# author: AquaIndigo
# date: 2020-11-27
# difficulty: Medium
# categories: Hash Table, Binary Search
# link: <https://leetcode.com/problems/4sum-ii/description/>
# hidden: true
# ---
# 
# Given four lists A, B, C, D of integer values, compute how many tuples `(i, j,
# k, l)` there are such that `A[i] + B[j] + C[k] + D[l]` is zero.
# 
# To make problem a bit easier, all A, B, C, D have same length of N where 0 ≤ N
# ≤ 500\. All integers are in the range of -228 to 228 \- 1 and the result is
# guaranteed to be at most 231 \- 1.
# 
# **Example:**
# 
#     
#     
#     Input:
#     A = [ 1, 2]
#     B = [-2,-1]
#     C = [-1, 2]
#     D = [ 0, 2]
#     
#     Output:
#     2
#     
#     Explanation:
#     The two tuples are:
#     1. (0, 0, 0, 1) -> A[0] + B[0] + C[0] + D[1] = 1 + (-2) + (-1) + 2 = 0
#     2. (1, 1, 0, 0) -> A[1] + B[1] + C[0] + D[0] = 2 + (-1) + (-1) + 0 = 0
#     
# 
# 
# 
# 
## @lc code=start
using LeetCode

function four_sum_count(A::Vector{Int}, B::Vector{Int}, C::Vector{Int}, D::Vector{Int})::Int
    dic = counter([a + b for a in A for b in B])
    return sum(get(dic, -c - d, 0) for c in C for d in D)
end
## @lc code=end
