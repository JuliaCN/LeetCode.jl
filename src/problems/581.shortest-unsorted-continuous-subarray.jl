# ---
# title: 581. Shortest Unsorted Continuous Subarray
# id: problem581
# author: Indigo
# date: 2021-06-26
# difficulty: Medium
# categories: Array
# link: <https://leetcode.com/problems/shortest-unsorted-continuous-subarray/description/>
# hidden: true
# ---
# 
# Given an integer array `nums`, you need to find one **continuous subarray**
# that if you only sort this subarray in ascending order, then the whole array
# will be sorted in ascending order.
# 
# Return  _the shortest such subarray and output its length_.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,6,4,8,10,9,15]
#     Output: 5
#     Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [1,2,3,4]
#     Output: 0
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [1]
#     Output: 0
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 104`
#   * `-105 <= nums[i] <= 105`
# 
# 
## @lc code=start
using LeetCode

function find_unsorted_subarray(nums::Vector{Int})
    stk = Int[]
    l, r = length(nums) + 1, 1
    for i in eachindex(nums)
        while !isempty(stk) && nums[stk[end]] > nums[i]
            l = min(l, pop!(stk))
        end
        push!(stk, i)
    end
    empty!(stk)
    for i in length(nums):-1:1
        while !isempty(stk) && nums[stk[end]] < nums[i]
            r = max(r, pop!(stk))
        end
        push!(stk, i)
    end
    return r - l > 0 ? r - l + 1 : 0
end
## @lc code=end
