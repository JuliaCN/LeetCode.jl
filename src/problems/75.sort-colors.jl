# ---
# title: 75. Sort Colors
# id: problem75
# author: zhwang
# date: 2022-08-04
# difficulty: Medium
# categories: Array, Two Pointers, Sort
# link: <https://leetcode.com/problems/sort-colors/description/>
# hidden: true
# ---
# 
# Given an array `nums` with `n` objects colored red, white, or blue, sort them
# **[in-place](https://en.wikipedia.org/wiki/In-place_algorithm) **so that
# objects of the same color are adjacent, with the colors in the order red,
# white, and blue.
# 
# Here, we will use the integers `0`, `1`, and `2` to represent the color red,
# white, and blue respectively.
# 
# **Follow up:**
# 
#   * Could you solve this problem without using the library's sort function?
#   * Could you come up with a one-pass algorithm using only `O(1)` constant space?
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [2,0,2,1,1,0]
#     Output: [0,0,1,1,2,2]
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [2,0,1]
#     Output: [0,1,2]
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: nums = [0]
#     Output: [0]
#     
# 
# **Example 4:**
# 
#     
#     
#     Input: nums = [1]
#     Output: [1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `n == nums.length`
#   * `1 <= n <= 300`
#   * `nums[i]` is `0`, `1`, or `2`.
# 
# 
## @lc code=start
using LeetCode

function sort_colors!(nums::Vector{Int})
    left = 1
    for i in eachindex(nums)
        if nums[i] == 0
            nums[i], nums[left] = nums[left], nums[i]
            left += 1
        end
    end
    for i in (left + 1):length(nums)
        if nums[i] == 1
            nums[i], nums[left] = nums[left], nums[i]
            left += 1
        end
    end
end

## @lc code=end
