# ---
# title: 910. Smallest Range II
# id: problem910
# author: Indigo
# date: 2021-07-12
# difficulty: Medium
# categories: Math, Greedy
# link: <https://leetcode.com/problems/smallest-range-ii/description/>
# hidden: true
# ---
# 
# Given an array `A` of integers, for each integer `A[i]` we need to choose
# **either  `x = -K` or `x = K`**, and add `x` to `A[i] **(only once)**`.
# 
# After this process, we have some array `B`.
# 
# Return the smallest possible difference between the maximum value of `B` and
# the minimum value of `B`.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: A = [1], K = 0
#     Output: 0
#     **Explanation** : B = [1]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: A = [0,10], K = 2
#     Output: 6
#     **Explanation** : B = [2,8]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: A = [1,3,6], K = 3
#     Output: 3
#     **Explanation** : B = [4,6,3]
#     
# 
# 
# 
# **Note:**
# 
#   1. `1 <= A.length <= 10000`
#   2. `0 <= A[i] <= 10000`
#   3. `0 <= K <= 10000`
# 
# 
## @lc code=start
using LeetCode

function smallest_rangeII(nums::Vector{Int}, k::Integer)
    sort!(nums)
    res = nums[end] - nums[1]
    for i in 2:length(nums)
        res = min(res, max(nums[end] - k, nums[i - 1] + k) - min(nums[1] + k, nums[i] - k))
    end    
    return res
end
## @lc code=end
