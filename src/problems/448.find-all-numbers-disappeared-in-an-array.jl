# ---
# title: 448. Find All Numbers Disappeared in an Array
# id: problem448
# author: Jerry Ling
# date: 2021-11-30
# difficulty: Easy
# categories: Array
# link: <https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/description/>
# hidden: true
# ---
# 
# Given an array of integers where 1 ≤ a[i] ≤ _n_ ( _n_ = size of array), some
# elements appear twice and others appear once.
# 
# Find all the elements of [1, _n_ ] inclusive that do not appear in this array.
# 
# Could you do it without extra space and in O( _n_ ) runtime? You may assume
# the returned list does not count as extra space.
# 
# **Example:**
# 
#     
#     
#     Input:
#     [4,3,2,7,8,2,3,1]
#     
#     Output:
#     [5,6]
#     
# 
# 
## @lc code=start
using LeetCode

function find_all_numbers_disappeared_in_an_array(arr::Vector{Int})
    return setdiff(eachindex(arr), arr)
end

## add your code here:
## @lc code=end
