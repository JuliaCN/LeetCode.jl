# ---
# title: 1004. Max Consecutive Ones III
# id: problem1004
# author: Indigo
# date: 2020-01-30
# difficulty: Medium
# categories: Two Pointers, Sliding Window
# link: <https://leetcode.com/problems/max-consecutive-ones-iii/description/>
# hidden: true
# ---
# 
# Given an array `A` of 0s and 1s, we may change up to `K` values from 0 to 1.
# 
# Return the length of the longest (contiguous) subarray that contains only 1s.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [1,1,1,0,0,0,1,1,1,1,0], K = 2
#     Output: 6
#     Explanation:
#     [1,1,1,0,0, _ **1** ,1,1,1,1, **1**_ ]
#     Bolded numbers were flipped from 0 to 1.  The longest subarray is underlined.
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], K = 3
#     Output: 10
#     Explanation:
#     [0,0, _1,1, **1** , **1** ,1,1,1, **1** ,1,1_,0,0,0,1,1,1,1]
#     Bolded numbers were flipped from 0 to 1.  The longest subarray is underlined.
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 20000`
#   2. `0 <= K <= A.length`
#   3. `A[i]` is `0` or `1` 
# 
# 
## @lc code=start
using LeetCode

function longest_ones(A::Vector{Int}, K::Int)
    l = r = 1
    len = length(A)
    cnt = res = 0
    while r <= len
        if A[r] == 0
            cnt += 1
        end
        r += 1
        while cnt > K
            if A[l] == 0
                cnt -= 1
            end
            l += 1
        end
        res = max(res, r - l)
    end
    res
end
## @lc code=end
