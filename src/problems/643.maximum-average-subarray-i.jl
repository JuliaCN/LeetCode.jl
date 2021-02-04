# ---
# title: 643. Maximum Average Subarray I
# id: problem643
# author: Indigo
# date: 2021-02-04
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/maximum-average-subarray-i/description/>
# hidden: true
# ---
# 
# Given an array consisting of `n` integers, find the contiguous subarray of
# given length `k` that has the maximum average value. And you need to output
# the maximum average value.
# 
# **Example 1:**
# 
#     
#     
#     Input: [1,12,-5,-6,50,3], k = 4
#     Output: 12.75
#     Explanation: Maximum average is (12-5-6+50)/4 = 51/4 = 12.75
#     
# 
# 
# 
# **Note:**
# 
#   1. 1 <= `k` <= `n` <= 30,000.
#   2. Elements of the given array will be in the range [-10,000, 10,000].
# 
# 
# 
# 
## @lc code=start
using LeetCode

function find_max_average(nums::Vector{Int}, K::Int)
    res = sum(@view(nums[1:K]))
    tmp = res
    i, j = 1, K + 1
    while j ≤ length(nums)
        tmp += nums[j] - nums[i]
        res = max(tmp, res)
        i += 1
        j += 1
    end
    res / K
end
## @lc code=end
