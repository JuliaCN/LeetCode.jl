# ---
# title: 45. Jump Game II
# id: problem45
# author: Indigo
# date: 2021-04-14
# difficulty: Hard
# categories: Array, Greedy
# link: <https://leetcode.com/problems/jump-game-ii/description/>
# hidden: true
# ---
# 
# Given an array of non-negative integers `nums`, you are initially positioned
# at the first index of the array.
# 
# Each element in the array represents your maximum jump length at that
# position.
# 
# Your goal is to reach the last index in the minimum number of jumps.
# 
# You can assume that you can always reach the last index.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,3,1,1,4]
#     Output: 2
#     Explanation: The minimum number of jumps to reach the last index is 2. Jump 1 step from index 0 to 1, then 3 steps to the last index.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [2,3,0,1,4]
#     Output: 2
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= nums.length <= 3 * 104`
#   * `0 <= nums[i] <= 105`
# 
# 
## @lc code=start
using LeetCode

function jump45(nums::Vector{Int})
    max_pos, len, ed, step = 1, length(nums), 1, 0
    for i in 1:(len - 1)
        max_pos = max(max_pos, i + nums[i])
        if i == ed
            ed = max_pos
            step += 1
        end
    end
    return step
end

## @lc code=end
