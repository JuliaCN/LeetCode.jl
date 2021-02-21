# ---
# title: 974. Subarray Sums Divisible by K
# id: problem974
# author: Indigo
# date: 2021-02-21
# difficulty: Medium
# categories: Array, Hash Table
# link: <https://leetcode.com/problems/subarray-sums-divisible-by-k/description/>
# hidden: true
# ---
# 
# Given an array `A` of integers, return the number of (contiguous, non-empty)
# subarrays that have a sum divisible by `K`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [4,5,0,-2,-3,1], K = 5
#     Output: 7
#     Explanation: There are 7 subarrays with a sum divisible by K = 5:
#     [4, 5, 0, -2, -3, 1], [5], [5, 0], [5, 0, -2, -3], [0], [0, -2, -3], [-2, -3]
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 30000`
#   2. `-10000 <= A[i] <= 10000`
#   3. `2 <= K <= 10000`
# 
# 
## @lc code=start
using LeetCode

function subarrays_div_by_k(A::Vector{Int}, K::Int)
    dct = DefaultDict{Int,Int}(0)
    dct[0] = 1
    prex = res = 0
    for num in A
        prex = mod(num + prex, K)
        res += dct[prex]
        dct[prex] += 1
    end
    res
end
## @lc code=end
