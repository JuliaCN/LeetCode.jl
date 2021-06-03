# ---
# title: 525. Contiguous Array
# id: problem525
# author: Indigo
# date: 2021-06-03
# difficulty: Medium
# categories: Hash Table
# link: <https://leetcode.com/problems/contiguous-array/description/>
# hidden: true
# ---
# 
# Given a binary array, find the maximum length of a contiguous subarray with
# equal number of 0 and 1.
# 
# **Example 1:**  
# 
#     
#     
#     Input: [0,1]
#     Output: 2
#     Explanation: [0, 1] is the longest contiguous subarray with equal number of 0 and 1.
#     
# 
# **Example 2:**  
# 
#     
#     
#     Input: [0,1,0]
#     Output: 2
#     Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.
#     
# 
# **Note:** The length of the given binary array will not exceed 50,000.
# 
# 
## @lc code=start
using LeetCode

function find_max_length(nums::Vector{Int})
    dc = Dict(0 => 0)
    res = acc = 0
    @inbounds for i in eachindex(nums)
        acc += nums[i] == 0 ? -1 : 1
        haskey(dc, acc) ? res = max(res, i - dc[acc]) : dc[acc] = i
    end
    return res
end
## @lc code=end
