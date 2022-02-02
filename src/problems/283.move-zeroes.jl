# ---
# title: 283. Move Zeroes
# id: problem283
# author: zhwang
# date: 2022-01-19
# difficulty: Easy
# categories: Array, Two Pointers
# link: <https://leetcode.com/problems/move-zeroes/description/>
# hidden: true
# ---
# 
# Given an array `nums`, write a function to move all `0`'s to the end of it
# while maintaining the relative order of the non-zero elements.
# 
# **Example:**
# 
#     
#     
#     Input: [0,1,0,3,12]
#     Output: [1,3,12,0,0]
# 
# **Note** :
# 
#   1. You must do this **in-place** without making a copy of the array.
#   2. Minimize the total number of operations.
# 
# 
## @lc code=start
using LeetCode

## use double pointers
function move_zeros!(nums::Vector{Int})::Nothing
    p2 = 1
    for p1 in 1:length(nums)
        if nums[p1] != 0
            nums[p1], nums[p2] = nums[p2], nums[p1]
            p2 += 1
        end
    end
    return nothing
end

## @lc code=end
