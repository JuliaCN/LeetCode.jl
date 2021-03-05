# ---
# title: 303. Range Sum Query - Immutable
# id: problem303
# author: Qling
# date: 2021-03-01
# difficulty: Easy
# categories: Dynamic Programming
# link: <https://leetcode.com/problems/range-sum-query-immutable/description/>
# hidden: true
# ---
# 
# Given an integer array `nums`, find the sum of the elements between indices
# `i` and `j` `(i ≤ j)`, inclusive.
# 
# Implement the `NumArray` class:
# 
#   * `NumArray(int[] nums)` Initializes the object with the integer array `nums`.
#   * `int sumRange(int i, int j)` Return the sum of the elements of the `nums` array in the range `[i, j]` inclusive (i.e., `sum(nums[i], nums[i + 1], ... , nums[j])`)
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     **Input**
#     ["NumArray", "sumRange", "sumRange", "sumRange"]
#     [[[-2, 0, 3, -5, 2, -1]], [0, 2], [2, 5], [0, 5]]
#     **Output**
#     [null, 1, -1, -3]
#     
#     **Explanation**
#     NumArray numArray = new NumArray([-2, 0, 3, -5, 2, -1]);
#     numArray.sumRange(0, 2); // return 1 ((-2) + 0 + 3)
#     numArray.sumRange(2, 5); // return -1 (3 + (-5) + 2 + (-1)) 
#     numArray.sumRange(0, 5); // return -3 ((-2) + 0 + 3 + (-5) + 2 + (-1))
#     
# 
# 
# 
# **Constraints:**
# 
#   * `0 <= nums.length <= 104`
#   * `-105 <= nums[i] <= 105`
#   * `0 <= i <= j < nums.length`
#   * At most `104` calls will be made to `sumRange`.
# 
# 
## @lc code=start
using LeetCode

struct NumArray
    sums::Vector
    function NumArray(nums::Vector)
        n = length(nums)
        sums = nums[:]

        for i = 2:n
            sums[i] = sums[i-1] + nums[i]
        end
        new(sums)
    end
end

function sum_range(nums::NumArray, i::Int, j::Int)
    i == j && return 0
    i == 1 && return nums.sums[j]
    return nums.sums[j] - nums.sums[i-1]
end
## @lc code=end
