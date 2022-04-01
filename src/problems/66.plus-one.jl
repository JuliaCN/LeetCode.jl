# ---
# title: 66. Plus One
# id: problem66
# author: zhwang
# date: 2022-03-17
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/plus-one/description/>
# hidden: true
# ---
# 
# Given a **non-empty** array of decimal digits representing a non-negative
# integer, increment one to the integer.
# 
# The digits are stored such that the most significant digit is at the head of
# the list, and each element in the array contains a single digit.
# 
# You may assume the integer does not contain any leading zero, except the
# number 0 itself.
# 
# 
# 
# **Example 1:**
# 
#     
#     
#     Input: digits = [1,2,3]
#     Output: [1,2,4]
#     Explanation: The array represents the integer 123.
#     
# 
# **Example 2:**
# 
#     
#     
#     Input: digits = [4,3,2,1]
#     Output: [4,3,2,2]
#     Explanation: The array represents the integer 4321.
#     
# 
# **Example 3:**
# 
#     
#     
#     Input: digits = [0]
#     Output: [1]
#     
# 
# 
# 
# **Constraints:**
# 
#   * `1 <= digits.length <= 100`
#   * `0 <= digits[i] <= 9`
# 
# 
## @lc code=start
using LeetCode

## use build-in function
plus_one(nums::Vector{Int}) = reverse!(digits(foldl((i, j) -> 10 * i + j, nums) + 1))
## method 2
function digits_plus_one(nums::Vector{Int})::Vector{Int}
    pos = findlast(!=(9), nums)
    isnothing(pos) && return append!([1], zeros(Int, length(nums)))
    return cat(
        @view(nums[1:(pos - 1)]), nums[pos] + 1, zeros(Int, length(nums) - pos); dims=1
    )
end

## @lc code=end
