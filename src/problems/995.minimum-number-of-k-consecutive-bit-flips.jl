# ---
# title: 995. Minimum Number of K Consecutive Bit Flips
# id: problem995
# author: Indigo
# date: 2021-02-18
# difficulty: Hard
# categories: Greedy, Sliding Window
# link: <https://leetcode.com/problems/minimum-number-of-k-consecutive-bit-flips/description/>
# hidden: true
# ---
# 
# In an array `A` containing only 0s and 1s, a _`K`-bit flip _consists of
# choosing a (contiguous) subarray of length `K` and simultaneously changing
# every 0 in the subarray to 1, and every 1 in the subarray to 0.
# 
# Return the minimum number of `K`-bit flips required so that there is no 0 in
# the array.  If it is not possible, return `-1`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [0,1,0], K = 1
#     Output: 2
#     Explanation: Flip A[0], then flip A[2].
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [1,1,0], K = 2
#     Output: -1
#     Explanation:  No matter how we flip subarrays of size 2, we can't make the array become [1,1,1].
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [0,0,0,1,0,1,1,0], K = 3
#     Output: 3
#     Explanation:
#     Flip A[0],A[1],A[2]: A becomes [1,1,1,1,0,1,1,0]
#     Flip A[4],A[5],A[6]: A becomes [1,1,1,1,1,0,0,0]
#     Flip A[5],A[6],A[7]: A becomes [1,1,1,1,1,1,1,1]
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 30000`
#   2. `1 <= K <= A.length`
# 
# 
## @lc code=start
using LeetCode, DataStructures

function min_k_bit_flips(A::Vector{Int}, K::Int)
    len, res = length(A), 0
    q = Queue{Int}()
    for i in 1:len
        (!isempty(q) && first(q) <= i - K) && dequeue!(q)
        
        if (length(q) & 1) == A[i]
            (i + K - 1 > len) && return -1 
            enqueue!(q, i)
            res += 1
        end
    end
    res
end
## @lc code=end
