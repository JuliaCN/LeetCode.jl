# ---
# title: 1005. Maximize Sum Of Array After K Negations
# id: problem1005
# author: Indigo
# date: 2021-01-30
# difficulty: Easy
# categories: Greedy
# link: <https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/description/>
# hidden: true
# ---
# 
# Given an array `A` of integers, we **must**  modify the array in the following
# way: we choose an `i` and replace `A[i]` with `-A[i]`, and we repeat this
# process `K` times in total.  (We may choose the same index `i` multiple
# times.)
# 
# Return the largest possible sum of the array after modifying it in this way.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [4,2,3], K = 1
#     Output: 5
#     Explanation: Choose indices (1,) and A becomes [4,-2,3].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [3,-1,0,2], K = 3
#     Output: 6
#     Explanation: Choose indices (1, 2, 2) and A becomes [3,1,0,2].
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [2,-3,-1,5,-4], K = 2
#     Output: 13
#     Explanation: Choose indices (1, 4) and A becomes [2,3,-1,5,4].
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 10000`
#   2. `1 <= K <= 10000`
#   3. `-100 <= A[i] <= 100`
# 
# 
## @lc code=start
using LeetCode

using DataStructures
function largest_sum_after_k_negations(A::Vector{Int}, K::Int)
    total = sum(A)
    pq = BinaryMinHeap(A)
    for _ in 1:K 
        m = pop!(pq)
        total -= 2 * m
        push!(pq, -m)
    end
    total
end
## @lc code=end
