# ---
# title: 740. Delete and Earn
# id: problem740
# author: Indigo
# date: 2021-05-14
# difficulty: Medium
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/delete-and-earn/description/>
# hidden: true
# ---
# 
# Given an array `nums` of integers, you can perform operations on the array.
# 
# In each operation, you pick any `nums[i]` and delete it to earn `nums[i]`
# points. After, you must delete **every** element equal to `nums[i] - 1` or
# `nums[i] + 1`.
# 
# You start with 0 points. Return the maximum number of points you can earn by
# applying such operations.
# 
# **Example 1:**
# 
#     
#     
#     Input: nums = [3, 4, 2]
#     Output: 6
#     Explanation: 
#     Delete 4 to earn 4 points, consequently 3 is also deleted.
#     Then, delete 2 to earn 2 points. 6 total points are earned.
#     
# 
# 
# 
# **Example 2:**
# 
#     
#     
#     Input: nums = [2, 2, 3, 3, 3, 4]
#     Output: 9
#     Explanation: 
#     Delete 3 to earn 3 points, deleting both 2's and the 4.
#     Then, delete 3 again to earn 3 points, and 3 again to earn 3 points.
#     9 total points are earned.
#     
# 
# 
# 
# **Note:**
# 
#   * The length of `nums` is at most `20000`.
#   * Each element `nums[i]` is an integer in the range `[1, 10000]`.
# 
# 
# 
# 
## @lc code=start
using LeetCode

function delete_and_earn(nums::Vector{Int})
    if length(nums) == 0
        return 0
    elseif length(nums) == 1
        return nums[1]
    end
    cntr = fill(0, maximum(nums))
    for num in nums
        cntr[num] += num
    end
    fst, scd = cntr[1], max(cntr[2], cntr[1])
    for i in 3:length(cntr)
        fst, scd = scd, max(fst + cntr[i], scd)
    end
    return scd
end
## @lc code=end
