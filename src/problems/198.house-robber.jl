# ---
# title: 198. House Robber
# id: problem198
# author: zhwang
# date: 2022-01-19
# difficulty: Easy
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/house-robber/description/>
# hidden: true
# ---
# 
# You are a professional robber planning to rob houses along a street. Each
# house has a certain amount of money stashed, the only constraint stopping you
# from robbing each of them is that adjacent houses have security system
# connected and **it will automatically contact the police if two adjacent
# houses were broken into on the same night**.
# 
# Given a list of non-negative integers representing the amount of money of each
# house, determine the maximum amount of money you can rob tonight **without
# alerting the police**.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [1,2,3,1]
#     Output: 4
#     Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
#                  Total amount you can rob = 1 + 3 = 4.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [2,7,9,3,1]
#     Output: 12
#     Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
#                  Total amount you can rob = 2 + 9 + 1 = 12.
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 100`
#   * `0 <= nums[i] <= 400`
# 
# 
## @lc code=start
using LeetCode

function rob(nums::Vector{Int})::Int
    n = length(nums)
    n == 1 && return nums[1]
    first, second = nums[1], max(nums[1], nums[2])
    for i in 3:n
        first, second = second, max(second, first + nums[i])
    end
    return second
end

## @lc code=end
