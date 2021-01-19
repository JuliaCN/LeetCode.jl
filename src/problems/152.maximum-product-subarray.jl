# ---
# title: 152. Maximum Product Subarray
# id: problem152
# author: Indigo
# date: 2021-01-19
# difficulty: Medium
# categories: Array, Dynamic Programming
# link: <https://leetcode.com/problems/maximum-product-subarray/description/>
# hidden: true
# ---
# 
# Given an integer array `nums`, find the contiguous subarray within an array
# (containing at least one number) which has the largest product.
# 
# **Example 1:**
# 
#     
#     
#     Input: [2,3,-2,4]
#     Output: 6
#     Explanation:  [2,3] has the largest product 6.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: [-2,0,-1]
#     Output: 0
#     Explanation:  The result cannot be 2, because [-2,-1] is not a subarray.
# 
# 
## @lc code=start
using LeetCode

function max_product(nums::Vector{Int})
    maxF = minF = res = nums[1]
    for num in @view nums[2:end]
        maxF, minF = max(maxF * num, minF * num, num), min(minF * num, maxF * num, num)
        res = max(res, maxF)
    end    
    res
end
## @lc code=end
